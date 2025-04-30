package com.bytedance.sdk.openadsdk.live.core;

import com.bytedance.android.live.base.api.IHostPermission;
import com.bytedance.android.live.base.api.LocationProvider;
import com.bytedance.sdk.openadsdk.TTCustomController;
/* loaded from: classes2.dex */
public class TTHostPermissionInner implements IHostPermission {

    /* renamed from: a  reason: collision with root package name */
    private TTCustomController f10677a;

    public TTHostPermissionInner(TTCustomController tTCustomController) {
        if (tTCustomController == null) {
            this.f10677a = new TTCustomController() { // from class: com.bytedance.sdk.openadsdk.live.core.TTHostPermissionInner.1
            };
        } else {
            this.f10677a = tTCustomController;
        }
    }

    public boolean alist() {
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null) {
            return false;
        }
        return tTCustomController.alist();
    }

    public String getDevImei() {
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null) {
            return null;
        }
        return tTCustomController.getDevImei();
    }

    public String getDevOaid() {
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null) {
            return null;
        }
        return tTCustomController.getDevOaid();
    }

    public String getMacAddress() {
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null) {
            return null;
        }
        return tTCustomController.getMacAddress();
    }

    public LocationProvider getTTLocation() {
        final com.bytedance.sdk.openadsdk.LocationProvider tTLocation;
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null || (tTLocation = tTCustomController.getTTLocation()) == null) {
            return null;
        }
        return new LocationProvider() { // from class: com.bytedance.sdk.openadsdk.live.core.TTHostPermissionInner.2
            public double getLatitude() {
                return tTLocation.getLatitude();
            }

            public double getLongitude() {
                return tTLocation.getLongitude();
            }
        };
    }

    public boolean isCanUseLocation() {
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null) {
            return true;
        }
        return tTCustomController.isCanUseLocation();
    }

    public boolean isCanUsePhoneState() {
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null) {
            return false;
        }
        return tTCustomController.isCanUsePhoneState();
    }

    public boolean isCanUseWifiState() {
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null) {
            return false;
        }
        return tTCustomController.isCanUseWifiState();
    }

    public boolean isCanUseWriteExternal() {
        TTCustomController tTCustomController = this.f10677a;
        if (tTCustomController == null) {
            return false;
        }
        return tTCustomController.isCanUseWriteExternal();
    }
}
