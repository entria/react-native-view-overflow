// @flow
import * as React from 'react';
import { View } from 'react-native';

class ViewWithoutOverflow extends React.PureComponent {
  render() {
    return <View {...this.props} />;
  }
}

export default ViewWithoutOverflow;
