# tw

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

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

- `w-0`
- `w-px`
- `w-0.5`
- `w-1`
- `w-1.5`
- `w-2`
- `w-2.5`
- `w-3`
- `w-3.5`
- `w-4`
- `w-5`
- `w-6`
- `w-7`
- `w-8`
- `w-9`
- `w-10`
- `w-11`
- `w-12`
- `w-14`
- `w-16`
- `w-20`
- `w-24`
- `w-28`
- `w-32`
- `w-36`
- `w-40`
- `w-44`
- `w-48`
- `w-52`
- `w-56`
- `w-60`
- `w-64`
- `w-72`
- `w-80`
- `w-96`
- `w-auto`
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
- `w-screen`
- `w-min`
- `w-max`
- `w-fit`
