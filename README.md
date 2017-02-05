# Price
A library to get the price or info related of an item from Amazon, Ebay among others.  
You can use a url or product id to get information of some item:

```rb
url = 'https://www.amazon.com/gp/product/1941222129/ref=oh_aui_detailpage_o01_s00?ie=UTF8&psc=1'
item = Price.from_url(url)
item.name # Metaprogramming Ruby 2: Program Like the Ruby Pros (Facets of Ruby)
item.price # 28.03
```
