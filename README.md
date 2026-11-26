# Puriva Group Website — Starter Build

This is the first working front-end build for Puriva Group. It is a static, responsive website that can be previewed locally without installing a framework.

## Included
- Three public pages: Home, Our Products, About Puriva.
- Original Puriva logo, palette reference and exact Puriva Laundry product image supplied by the client.
- Product catalogue, category filter and search.
- Product detail modal and quantity selection.
- Multi-item enquiry cart.
- WhatsApp order-message preparation using the configured Puriva number.
- Admin preview for editing product details, variants, product images, contact links and homepage copy.
- Upload slots for real product-angle photographs. The 360-degree drag viewer only activates when genuine multiple angle images are uploaded.
- Responsive mobile layout.

## Preview
Open `index.html` in a modern browser. For best results, serve the folder using a local static server, e.g. `python -m http.server 8000`, then visit `http://localhost:8000`.

Admin preview:
1. Open the public website.
2. Scroll to the footer and choose **Admin access**.
3. Enter `PURIVA-DEMO-2026`.

**Important:** this is a local browser preview only. Changes are stored in that browser's localStorage. The preview code is visible in the front-end and is NOT secure authentication. Do not publish this admin preview as a live admin system.

## Before production deployment
The production build must connect to a hosted database and authentication provider:
- Create a Supabase project.
- Create two separate administrator accounts for the Puriva administrator and CEO using their real email addresses.
- Store administrator roles in a protected `profiles` table.
- Enable Row Level Security on every table.
- Create private/public storage buckets for product images as appropriate.
- Move product, variant, company settings and homepage content from localStorage into Supabase.
- Replace the preview login with Supabase Auth.
- Restrict all admin write operations to authorized administrator roles.
- Configure image storage and optimization.
- Add privacy notice, terms, order/enquiry handling policy and final SEO metadata.
- Test WhatsApp click-to-chat on Android, iOS and desktop.
- Deploy to hosting when the domain is ready.

## 360-degree product rotation
Only one original product image was supplied for Puriva Laundry. The site uses that exact image. To enable a true photographic 360-degree viewer, upload 8–24 sequential photographs of the same physical product, evenly spaced around the product. The site will rotate through the uploaded frames on drag. It does not synthesize missing angles.

## Brand rules
- Puriva purple: `#5B0070`
- Deep navy: `#011956`
- Black: `#000000`
- White: `#FFFFFF`
- Preserve the supplied logo and product artwork. Do not substitute generated product imagery.

## Known initial company information
- Puriva Group operates through Puriva Ultracare Products Limited.
- Address: Oba, Anambra State, Nigeria.
- Email: purivagroup@gmail.com
- WhatsApp: +234 916 782 0606
- LinkedIn: https://www.linkedin.com/in/puriva-group-885365452
- Facebook: https://www.facebook.com/profile.php?id=61595660383564
- Instagram: not yet created.
