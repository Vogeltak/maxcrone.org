<picture>
    <source srcset="https://f003.backblazeb2.com/file/maxcrone-org/img/{{ name }}_{% if size %}{{ size }}{% else %}1280{% endif %}.avif" type="image/avif">
    <source srcset="https://f003.backblazeb2.com/file/maxcrone-org/img/{{ name }}_{% if size %}{{ size }}{% else %}1280{% endif %}.webp" type="image/webp">
    <img src="https://f003.backblazeb2.com/file/maxcrone-org/img/{{ name }}_{% if size %}{{ size }}{% else %}1280{% endif %}.jpg" {% if caption %}alt="{{ caption }}"{% endif %} loading="lazy">
</picture>
{% if caption %}
<p class="picture-subscript">{{ caption }}</p>
{% endif %}
