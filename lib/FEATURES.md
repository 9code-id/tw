Saya ingin membuat sebuah container dengan kemampuan seperti Tailwind. Letakkan semua widget di dalam directory `lib/core/tw/`.

Fitur dasar yang diterapkan:
- Margin: mx, my, mt, mr, mb, ml
- Padding: px, py, pt, pr, pb, pl
- Font size
- Radius
- Shadow
- Border
- Background color (bg-color)
- Text color (text-color)

Contoh penggunaan:
```
FContainer(
    q: 'bg-red-500 text-white rounded-lg p-4 mb-4 shadow-lg', 
    children: [
        FText("Hello")
    ],
),
```

Catatan:
- Warna (misalnya, `red`) bisa diisi dengan warna apa saja.
- Angka (misalnya, `500`) bisa diisi antara 100-900.
- Angka padding dan margin bisa diubah sesuai kebutuhan.

Fitur shadow
- shadow-xs
- shadow-sm
- shadow-md
- shadow-lg
- shadow-xl
- shadow-2xl
- shadow-inner
- shadow-outline
- shadow-none

Fitur fontSize
- text-xs
- text-sm
- text-base
- text-lg
- text-xl
- text-2xl
- text-3xl
- text-4xl
- text-5xl
- text-6xl

Fitur text color
- text-{color}-value
eg: text-red-500


Font Weight
- font-thin
- font-extralight
- font-light
- font-normal
- font-medium
- font-semibold
- font-bold

Font Style
- italic
- not-italic

Font Decoration
- underline
- line-through
- no-underline

Font Alignment
- text-left
- text-center
- text-right
- text-justify

Font Transform
- uppercase
- lowercase
- capitalize
- normal-case

Font Overflow
- truncate
- overflow-ellipsis
- overflow-clip
- overflow-visible
- overflow-hidden
- overflow-scroll

Font Size
- text-xs
- text-sm
- text-base
- text-lg
- text-xl
- text-2xl
- text-3xl
- text-4xl
- text-5xl
- text-6xl

Animation
- animate-none
- animate-spin
- animate-ping
- animate-pulse
- animate-bounce