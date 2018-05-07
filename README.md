# react-native-view-overflow

## Motivation

The problem is that a parent View in Android will clip the content of children Views (react-native)

This solves the problem of Overflow on Android (check this https://github.com/facebook/react-native/issues/16951)

This could make code simpler, so you don't need to move some Components outside parents to make layout work

You can read more about the motivation and this package here https://medium.com/@sibelius/solving-view-overflow-in-android-reactnative-f961752a75cd

## Getting started

`$ npm install react-native-view-overflow --save`

### Mostly automatic installation

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

### Manual installation

#### iOS

via CocoaPods:

1. Open comand line in your project IOS folder, and run command `pod install`.
2. Run your project (`Cmd+R`)

or via Libraries:

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-view-overflow` and add `RNViewOverflow.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNViewOverflow.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNViewOverflowPackage;` to the imports at the top of the file
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

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNViewOverflow.sln` in `node_modules/react-native-view-overflow/windows/RNViewOverflow.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using View.Overflow.RNViewOverflow;` to the usings at the top of the file
  - Add `new RNViewOverflowPackage()` to the `List<IReactPackage>` returned by the `Packages` method
