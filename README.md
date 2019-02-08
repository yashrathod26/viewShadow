# viewShadow
This pod is used to add shadow to your uiview in just one line of code

# Installation:
Pods

```
pod 'viewShadow', :git => 'https://github.com/yashrathod26/viewShadow.git', :branch => 'master'
```

## Usage
#### Storyboard
Make subclass of UIView and give outlet to your swift file and use this functions

#### Programmatically
Add viewShadow to subview and with viewVariable use all the fuctions

### Functions
1) viewVariable.dropShadow()
2) viewVariable.dropShadow(scale:true)
3) viewVariable.dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true)
4) viewVariable.addShadow(location: VerticalLocation, color: UIColor = .black, opacity: Float = 0.5, radius: CGFloat = 5.0)

VerticalLocation:
1) Top
2) Bottom
