## [Link](#link)

### Extends: [Entity](#entity)

A link in VR can be anything such as grabbing onto an object, placing something on our head, clicking something, even eating something! The default implementation of links are portals or windows, using a 360° image thumbnail to preview the destination.

	myLink = new Link
		position: '0 0 1'
		href: "index.html"
		title: "My Homepage"
		image: "assets/homeThumbnail.png"

-------------------------------------------------------

#### [link.href](#link-href) *string*

Set the destiantion URL where the link points to.

	myLink = new Link
		href: "cool.html"

-------------------------------------------------------

#### [link.title](#link-title) *string*

Set the text displayed on the link. The href or page URL is used if not defined.

	myLink = new Link
		title: "Hahaha"

-------------------------------------------------------

#### [link.href](#link-href) *string*

Set the link preview, a 360° image used as scene preview in the portal.

	myLink = new Link
		image: "assets/homeThumbnail.png"
