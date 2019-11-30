# react-native-view-overflow

## React Native Version Notice

This library will be useful for React Native versions below v0.57. For v0.57 and beyond, React Native supports Android overflow natively from [this commit](https://github.com/facebook/react-native/commit/b81c8b51fc6fe3c2dece72e3fe500e175613c5d4).

## Motivation

The problem is that a parent View in Android will clip the content of children Views (react-native)

This solves the problem of Overflow on Android (check this https://github.com/facebook/react-native/issues/16951)

This could make code simpler, so you don't need to move some Components outside parents to make layout work

You can read more about the motivation and this package here https://medium.com/@sibelius/solving-view-overflow-in-android-reactnative-f961752a75cd

## Getting started
### Steps to (mostly) automatically install react-native-view-overflow
#### If you are using react-native >=0.60.0

`$ npm install react-native-view-overflow --save`

#### Otherwise, if you are using react-native <0.60.0 

`$ npm install react-native-view-overflow --save`

`$ react-native link react-native-view-overflow`

## Usage
```javascript
import ViewOverflow from 'react-native-view-overflow';

<ViewOverflow>
    <ComponentToEnableOverflow />
</ViewOverflow>

```

## Usage with Flatlist
To make this work with FlatList and related components you need to replace `CellRendererComponent` with `ViewOverflow`, for example:

```jsx
<FlatList
  data={this.state.data}
  keyExtractor={item => item.id}
  CellRendererComponent={ViewOverflow}
  renderItem={({ item, index }) => (
      <ViewOverflow style={styles.item}>
      // item....
      </ViewOverflow>
   )}
/>
```

## Usage with Animated Views
To make this work in place of an `Animated.View`, you need to use `Animated.createAnimatedComponent` to create an animatable version of `ViewOverflow`. For example:

```
import ViewOverflow from 'react-native-view-overflow';
const AnimatedViewOverflow = Animated.createAnimatedComponent(ViewOverflow);
```

You can then use `AnimatedViewOverflow` in place of `Animated.View`.

### Manual installation

1. Open up `android/app/src/main/java/[...]/MainApplication.java`
  - Add `import com.entria.views.RNViewOverflowPackage;` to the imports at the top of the file
  - Add `new RNViewOverflowPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-view-overflow'
  	project(':react-native-view-overflow').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-view-overflow/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-view-overflow')
  	```
