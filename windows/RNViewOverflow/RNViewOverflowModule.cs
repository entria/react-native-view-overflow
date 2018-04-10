using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace View.Overflow.RNViewOverflow
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNViewOverflowModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNViewOverflowModule"/>.
        /// </summary>
        internal RNViewOverflowModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNViewOverflow";
            }
        }
    }
}
