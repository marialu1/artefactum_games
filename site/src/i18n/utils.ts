import en from './en.json';
import pt from './pt.json';

export const languages = {
  en: 'English',
  pt: 'Português',
} as const;

export const defaultLang = 'en' as const;

export type Lang = keyof typeof languages;

const translations = { en, pt } as const;

type NestedKeyOf<T> = T extends object
  ? { [K in keyof T]: K extends string
      ? T[K] extends object
        ? `${K}.${NestedKeyOf<T[K]>}`
        : K
      : never
    }[keyof T]
  : never;

type TranslationKey = NestedKeyOf<typeof en>;

/**
 * Get translation for a key
 */
export function t(lang: Lang, key: TranslationKey): string {
  const keys = key.split('.');
  let value: unknown = translations[lang];

  for (const k of keys) {
    if (value && typeof value === 'object' && k in value) {
      value = (value as Record<string, unknown>)[k];
    } else {
      // Fallback to English
      value = translations.en;
      for (const fallbackKey of keys) {
        if (value && typeof value === 'object' && fallbackKey in value) {
          value = (value as Record<string, unknown>)[fallbackKey];
        }
      }
      break;
    }
  }

  return typeof value === 'string' ? value : key;
}

/**
 * Get language from URL path
 */
export function getLangFromUrl(url: URL): Lang {
  const [, lang] = url.pathname.split('/');
  if (lang in languages) {
    return lang as Lang;
  }
  return defaultLang;
}

/**
 * Get translated URL paths for language switching
 */
export function getTranslatedPath(pathname: string, targetLang: Lang): string {
  const segments = pathname.split('/').filter(Boolean);

  // If first segment is a language code, replace it
  if (segments[0] in languages) {
    segments[0] = targetLang;
  } else {
    segments.unshift(targetLang);
  }

  return '/' + segments.join('/');
}

/**
 * Route mappings for different languages
 */
export const routes = {
  en: {
    home: '',
    games: 'games',
    about: 'about',
    contact: 'contact',
    custom: 'custom',
  },
  pt: {
    home: '',
    games: 'jogos',
    about: 'sobre',
    contact: 'contacto',
    custom: 'personalizar',
  },
} as const;

/**
 * Get localized route
 */
export function getRoute(lang: Lang, route: keyof typeof routes.en): string {
  return `/${lang}/${routes[lang][route]}`;
}
