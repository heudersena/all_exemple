adb reverse tcp:9090 tcp:9090

import Reactotron from 'reactotron-react-native'
import AsyncStorage from "@react-native-community/async-storage"

```javascript
// ReactotronConfig.js
const tron = Reactotron
  .setAsyncStorageHandler(AsyncStorage) // AsyncStorage would either come from `react-native` or `@react-native-community/async-storage` depending on where you get it from
  .configure({
    name: "React Native Demo",
    host: '10.67.11.2'
  }) // controls connection & communication settings
  .useReactNative() // add all built-in react native plugins
  .connect() // let's connect!yar
  tron.clear()
  console.tron = tron;



//   app.js
if(__DEV__) {
  import('./ReactotronConfig').then(() => console.log('Reactotron Configured'))
}
```