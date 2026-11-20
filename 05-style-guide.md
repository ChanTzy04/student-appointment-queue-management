# Style Guide: PARSU Student Appointment and Queue Management System

## Colors

| Token | HEX | Purpose |
|---|---|---|
| Primary navy | `#102A43` | Headings, primary buttons, navigation, focus text |
| Action blue | `#1976B9` | Links, active controls, secondary actions |
| Background | `#F4F7FA` | Page canvas |
| Surface | `#FFFFFF` | Cards, forms, table surfaces |
| Text | `#223548` | Main body text |
| Success | `#247A55` | Confirmed/completed states and success messages |
| Error | `#A93434` | Validation errors and cancellation states |
| Border | `#D9E3EC` | Dividers and control borders |

Normal text `#223548` on background `#F4F7FA` has an estimated contrast ratio of **11.0:1**, which passes WCAG AA (4.5:1 minimum). White text on primary navy is also above 4.5:1.

## Typography

- Heading font: `Arial, Helvetica, sans-serif`, bold weights.
- Body font: `Arial, Helvetica, sans-serif`.
- Base size: `15px` desktop, `14px` on small screens.
- Line height: `1.55` for readable form and table content.

## Components

- **Primary button:** Navy background, white text, 8px radius, 10px × 15px padding, bold label. Use for the main action such as “Save appointment”.
- **Secondary button:** White or pale blue surface with a border, navy text, and the same radius/padding. Use for Cancel or Back.
- **Text input/select/textarea:** Full-width white control, 1px light-blue border, 8px radius, 11px × 12px padding. Every control has a visible label.
- **Error message:** Pale red background, red left border, red text; place beside or directly below the invalid field.
- **Status badge:** Compact pill with a status-specific pale background and high-contrast text.

## CSS custom properties

```css
:root {
  --color-primary: #102a43;
  --color-action: #1976b9;
  --color-bg: #f4f7fa;
  --color-surface: #ffffff;
  --color-text: #223548;
  --color-success: #247a55;
  --color-error: #a93434;
  --color-border: #d9e3ec;
  --color-muted: #617487;
  --radius: 8px;
  --font-heading: Arial, Helvetica, sans-serif;
  --font-body: Arial, Helvetica, sans-serif;
}
```
