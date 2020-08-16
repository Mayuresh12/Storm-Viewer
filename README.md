# Storm Viewer

User taps on the tableview and opens in the detail view controller.

## App Demo

![](gif/1.gif)

##### Key highlights used in this project are 
- table views
- image views 
- app bundles 
- FileManager 
- typecasting 
- view controllers 
- storyboards 
- outlets 
- Auto Layout
- UIImage

 ###### <ins> Reading data from the app bundle </ins>

```swift
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        for item in items {
            if item.hasPrefix("nssl"){
                // load the photo
                pictures.append(item)
            }
        }
```
###### <ins> Zoom In and out image fullscreen and  hide navigationController top </ins>


```swift
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.hidesBarsOnTap = true
    }
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.hidesBarsOnTap = false
    }
```

## Tools used
- Xcode 11.3.1
- Swift 5
- Git
