package android.content.pm;

import android.content.ComponentName;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class PackageParser {

    /* loaded from: classes.dex */
    public static final class Activity extends Component<ActivityIntentInfo> {
        public ActivityInfo info;
    }

    /* loaded from: classes.dex */
    public static final class ActivityIntentInfo extends IntentInfo {
        public Activity activity;
    }

    /* loaded from: classes.dex */
    public static class Component<II extends IntentInfo> {
        public String className;
        public ArrayList<II> intents;
        public Bundle metaData;

        public ComponentName getComponentName() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static final class Instrumentation extends Component<IntentInfo> {
        public InstrumentationInfo info;
    }

    /* loaded from: classes.dex */
    public static class IntentInfo extends IntentFilter {
        public int banner;
        public boolean hasDefault;
        public int icon;
        public int labelRes;
        public int logo;
        public CharSequence nonLocalizedLabel;
    }

    /* loaded from: classes.dex */
    public static final class Package {
        public ApplicationInfo applicationInfo;
        public String baseCodePath;
        public Bundle mAppMetaData;
        public Object mExtras;
        public int mPreferredOrder;
        public String mSharedUserId;
        public int mSharedUserLabel;
        public Signature[] mSignatures;
        public SigningDetails mSigningDetails;
        public int mVersionCode;
        public String mVersionName;
        public String packageName;
        public ArrayList<String> usesLibraries;
        public ArrayList<String> usesOptionalLibraries;
        public final ArrayList<Permission> permissions = new ArrayList<>(0);
        public final ArrayList<PermissionGroup> permissionGroups = new ArrayList<>(0);
        public final ArrayList<Activity> activities = new ArrayList<>(0);
        public final ArrayList<Activity> receivers = new ArrayList<>(0);
        public final ArrayList<Provider> providers = new ArrayList<>(0);
        public final ArrayList<Service> services = new ArrayList<>(0);
        public final ArrayList<Instrumentation> instrumentation = new ArrayList<>(0);
        public final ArrayList<String> requestedPermissions = new ArrayList<>();
        public ArrayList<ConfigurationInfo> configPreferences = null;
        public ArrayList<FeatureInfo> reqFeatures = null;
    }

    /* loaded from: classes.dex */
    public static final class Permission extends Component<IntentInfo> {
        public PermissionInfo info;
    }

    /* loaded from: classes.dex */
    public static final class PermissionGroup extends Component<IntentInfo> {
        public PermissionGroupInfo info;
    }

    /* loaded from: classes.dex */
    public static final class Provider extends Component<ProviderIntentInfo> {
        public ProviderInfo info;
    }

    /* loaded from: classes.dex */
    public static final class ProviderIntentInfo extends IntentInfo {
        public Provider provider;
    }

    /* loaded from: classes.dex */
    public static final class Service extends Component<ServiceIntentInfo> {
        public ServiceInfo info;
    }

    /* loaded from: classes.dex */
    public static final class ServiceIntentInfo extends IntentInfo {
        public Service service;
    }

    /* loaded from: classes.dex */
    public static final class SigningDetails implements Parcelable {
        public static final Parcelable.Creator<SigningDetails> CREATOR = new Parcelable.Creator<SigningDetails>() { // from class: android.content.pm.PackageParser.SigningDetails.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SigningDetails createFromParcel(Parcel in2) {
                throw new RuntimeException("Stub!");
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SigningDetails[] newArray(int size) {
                throw new RuntimeException("Stub!");
            }
        };
        public static final SigningDetails UNKNOWN = null;
        public Signature[] signatures;

        /* loaded from: classes.dex */
        public @interface CertCapabilities {
            public static final int AUTH = 16;
            public static final int INSTALLED_DATA = 1;
            public static final int PERMISSION = 4;
            public static final int ROLLBACK = 8;
            public static final int SHARED_USER_ID = 2;
        }

        protected SigningDetails(Parcel in2) {
            throw new RuntimeException("Stub!");
        }

        public boolean checkCapability(SigningDetails oldDetails, int flags) {
            throw new RuntimeException("Stub!");
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            throw new RuntimeException("Stub!");
        }

        public boolean hasAncestorOrSelf(SigningDetails oldDetails) {
            throw new RuntimeException("Stub!");
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel dest, int flags) {
            throw new RuntimeException("Stub!");
        }
    }
}
