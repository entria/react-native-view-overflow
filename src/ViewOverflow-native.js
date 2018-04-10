// @flow
import { requireNativeComponent, View } from 'react-native';

const componentInterface = {
  name: 'RNViewOverflow',
  propTypes: {
    ...View.propTypes, // include the default view properties
  },
};

export default requireNativeComponent('RNViewOverflow', componentInterface);
