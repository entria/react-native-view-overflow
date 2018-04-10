// @flow
import * as React from 'react';

import NativeVieWithoutOverflow from './ViewOverflow-native';

class ViewWithoutOverflow extends React.PureComponent {
  render() {
    return <NativeVieWithoutOverflow {...this.props} />;
  }
}

export default ViewWithoutOverflow;
