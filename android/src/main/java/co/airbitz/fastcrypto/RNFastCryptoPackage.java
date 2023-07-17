
package co.airbitz.fastcrypto;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

import com.facebook.react.ReactPackage;
import com.facebook.react.bridge.NativeModule;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.uimanager.ViewManager;
import com.facebook.react.bridge.JavaScriptModule;
public class RNFastCryptoPackage implements ReactPackage {
    private final String userAgent;

    public RNFastCryptoPackage(String userAgent) {
        this.userAgent = userAgent;
    }
    
    public RNFastCryptoPackage() {
        this.userAgent = "None";
    }

    @Override
    public List<NativeModule> createNativeModules(ReactApplicationContext reactContext) {
      return Arrays.<NativeModule>asList(new RNFastCryptoModule(reactContext, userAgent));
    }

    public List<Class<? extends JavaScriptModule>> createJSModules() {
      return Collections.emptyList();
    }

    @Override
    public List<ViewManager> createViewManagers(ReactApplicationContext reactContext) {
      return Collections.emptyList();
    }
}
