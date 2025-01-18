# tw

A new Flutter project.

## Tailwind-like Container and Text Widgets

This project includes custom Flutter widgets `FContainer` and `FText` that mimic Tailwind CSS styling.

### Features

- Margin: `mx`, `my`, `mt`, `mr`, `mb`, `ml`
- Padding: `px`, `py`, `pt`, `pr`, `pb`, `pl`
- Font size: `fs-{fontSizeValue}`
- Radius: `rd-{radiusValue}`
- Shadow: `shadow-{shadowValue}`
- Border
- Background color: `bg-{color}-{value}`
- Text color: `text-{color}-{value}`
- Width: `w-{widthValue}`
- Height: `h-{heightValue}`
- Spacing: `gap-{value}`, `gap-x-{value}`, `gap-y-{value}`
- Text alignment: `text-left`, `text-center`, `text-right`
- Animation: `animate-none`, `animate-spin`, `animate-ping`, `animate-pulse`, `animate-bounce`
- Positioning: `left-{value}`, `right-{value}`, `top-{value}`, `bottom-{value}`
- Layouts: `row`, `wrap`, `stack`, `schild`, `list`, `grid`
- Shrink Wrap: `shrinkWrap`
- Axis: `axis-x`, `axis-y`

### Usage

#### FContainer

```dart
FContainer(
  q: 'bg-red-500 text-white rounded-lg p-4 mb-4 shadow-lg rd-16 w-full',
  children: [
    FText(
      "Hello",
      q: "text-white text-lg font-bold",
    ),
    FText(
      "World",
      q: "text-white text-lg font-bold",
    ),
  ],
),
```

#### FText

```dart
FText(
  "Hello",
  q: "text-white text-lg font-bold",
),
```

### Supported Tailwind-like Classes

#### Background Color

- `bg-{color}-{value}`

#### Text Color

- `text-{color}-{value}`

#### Padding

- `p-{value}`
- `pt-{value}`
- `pr-{value}`
- `pb-{value}`
- `pl-{value}`
- `px-{value}`
- `py-{value}`

#### Margin

- `m-{value}`
- `mt-{value}`
- `mr-{value}`
- `mb-{value}`
- `ml-{value}`
- `mx-{value}`
- `my-{value}`

#### Border Radius

- `rd-{value}`
- `rd-t-{value}`
- `rd-r-{value}`
- `rd-b-{value}`
- `rd-l-{value}`

#### Shadow

- `shadow-xs`
- `shadow-sm`
- `shadow-md`
- `shadow-lg`
- `shadow-xl`
- `shadow-2xl`
- `shadow-inner`
- `shadow-outline`
- `shadow-none`

#### Width

- `w-{value}`
- `w-1/2`
- `w-1/3`
- `w-2/3`
- `w-1/4`
- `w-2/4`
- `w-3/4`
- `w-1/5`
- `w-2/5`
- `w-3/5`
- `w-4/5`
- `w-1/6`
- `w-2/6`
- `w-3/6`
- `w-4/6`
- `w-5/6`
- `w-1/12`
- `w-2/12`
- `w-3/12`
- `w-4/12`
- `w-5/12`
- `w-6/12`
- `w-7/12`
- `w-8/12`
- `w-9/12`
- `w-10/12`
- `w-11/12`
- `w-full`

#### Height

- `h-{value}`
- `h-full`

#### Spacing

- `gap-{value}`
- `gap-x-{value}`
- `gap-y-{value}`

#### Text Alignment

- `text-left`
- `text-center`
- `text-right`

#### Animation

- `animate-none`
- `animate-spin`
- `animate-ping`
- `animate-pulse`
- `animate-bounce`

#### Positioning

- `left-{value}`
- `right-{value}`
- `top-{value}`
- `bottom-{value}`

#### Layouts

- `row`
- `wrap`
- `stack`
- `schild`
- `list`
- `grid`

#### Shrink Wrap

- `shrinkWrap`

#### Axis

- `axis-x`
- `axis-y`
