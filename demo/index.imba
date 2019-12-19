### css
body {
	margin: 0;
	padding: 0;
}
###
tag demo-simple-gallery-view < simple-gallery-view
#			<section.example>
#				<h2> "Usage"
#			<hr>
#			<footer>
#				<span>
#					"Built using "
#					<a href="https://github.com/imba/imba"> "Imba v2.0.0-alpha.10"

let data = localStorage.getItem('payload')

if !data
	let u = "https://picsum.photos/list"
	let req = await fetch(u)
	data = await req.json()
const width = "1024"
const height = "768"
const payload = data.map do |x|
	let image = {}
	image.url = "https://picsum.photos/id/{x.id}/{width}/{height}"
	image.caption = x.author
	image

imba.mount <demo-simple-gallery-view index=0 images=payload>
