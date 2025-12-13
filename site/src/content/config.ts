import { defineCollection, z } from 'astro:content';

const gamesCollection = defineCollection({
  type: 'content',
  schema: z.object({
    // Basic info
    title: z.string(),
    gameId: z.string(), // e.g., "christmas-murder-1926"
    tagline: z.string(),
    description: z.string(),
    lang: z.enum(['en', 'pt']).default('en'),

    // Game details
    players: z.string(), // e.g., "11" or "1-4"
    duration: z.string(), // e.g., "5-6h"
    language: z.string(), // e.g., "PT" or "EN, PT"
    type: z.enum(['dinner-party', 'box-game', 'digital', 'hybrid']),

    // Status and pricing
    status: z.enum(['available', 'coming_soon', 'sold_out', 'preorder']),
    price: z.number().optional(),
    currency: z.string().default('EUR'),
    gumroadUrl: z.string().url().optional(),

    // Media
    heroImage: z.string().optional(),
    gallery: z.array(z.string()).optional(),
    trailerUrl: z.string().url().optional(),

    // Dates
    releaseDate: z.string().optional(), // ISO date string
    publishedAt: z.string().optional(),

    // SEO
    seoTitle: z.string().optional(),
    seoDescription: z.string().optional(),

    // Ordering
    order: z.number().default(0),
    featured: z.boolean().default(false),
  }),
});

export const collections = {
  games: gamesCollection,
};
