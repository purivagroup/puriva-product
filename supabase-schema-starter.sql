-- Puriva production database starter schema (run only in a new Supabase project)
create table if not exists public.profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  full_name text not null,
  role text not null check (role in ('admin','ceo')),
  created_at timestamptz not null default now()
);
create table if not exists public.site_settings (
  id integer primary key default 1 check (id = 1),
  whatsapp text not null default '+234 916 782 0606',
  email text not null default 'purivagroup@gmail.com',
  address text not null default 'Oba, Anambra State, Nigeria',
  linkedin text,
  facebook text,
  instagram text,
  hero_headline text,
  hero_subheadline text,
  updated_at timestamptz not null default now()
);
create table if not exists public.products (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  category text not null,
  description text,
  benefits text,
  availability text not null default 'Available',
  image_path text,
  featured boolean not null default false,
  sort_order integer not null default 0,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);
create table if not exists public.product_variants (
  id uuid primary key default gen_random_uuid(),
  product_id uuid not null references public.products(id) on delete cascade,
  label text not null,
  sort_order integer not null default 0
);
create table if not exists public.product_frames (
  id uuid primary key default gen_random_uuid(),
  product_id uuid not null references public.products(id) on delete cascade,
  image_path text not null,
  frame_order integer not null
);
alter table public.profiles enable row level security;
alter table public.site_settings enable row level security;
alter table public.products enable row level security;
alter table public.product_variants enable row level security;
alter table public.product_frames enable row level security;

-- Public read policies. Add production admin write policies only after creating
-- and verifying the two real Auth users and their profiles.
create policy "Public can read products" on public.products for select using (true);
create policy "Public can read variants" on public.product_variants for select using (true);
create policy "Public can read product frames" on public.product_frames for select using (true);
create policy "Public can read site settings" on public.site_settings for select using (true);
create policy "Users can read own profile" on public.profiles for select to authenticated using (auth.uid() = id);
