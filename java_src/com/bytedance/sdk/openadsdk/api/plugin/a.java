package com.bytedance.sdk.openadsdk.api.plugin;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.bytedance.sdk.openadsdk.common.CommonListener;
import com.bytedance.sdk.openadsdk.downloadnew.core.ExitInstallListener;
import java.lang.ref.WeakReference;
import java.util.concurrent.ScheduledExecutorService;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultAdManager.java */
/* loaded from: classes2.dex */
public final class a implements TTAdManager {

    /* renamed from: a  reason: collision with root package name */
    static final a f10506a = new a();

    /* renamed from: b  reason: collision with root package name */
    private volatile TTAdManager f10507b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DefaultAdManager.java */
    /* renamed from: com.bytedance.sdk.openadsdk.api.plugin.a$1  reason: invalid class name */
    /* loaded from: classes2.dex */
    public class AnonymousClass1 implements b<TTAdNative> {

        /* renamed from: a  reason: collision with root package name */
        TTAdNative f10508a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ WeakReference f10509b;

        AnonymousClass1(WeakReference weakReference) {
            this.f10509b = weakReference;
        }

        @Override // com.bytedance.sdk.openadsdk.api.plugin.a.b
        public void a(final InterfaceC0044a<TTAdNative> interfaceC0044a) {
            TTAdNative tTAdNative = this.f10508a;
            if (tTAdNative != null) {
                interfaceC0044a.a(tTAdNative);
            } else {
                a.this.call(new InterfaceC0044a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.1.1
                    @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                    public void a(TTAdManager tTAdManager) {
                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                        anonymousClass1.f10508a = tTAdManager.createAdNative((Context) anonymousClass1.f10509b.get());
                        interfaceC0044a.a(AnonymousClass1.this.f10508a);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultAdManager.java */
    /* renamed from: com.bytedance.sdk.openadsdk.api.plugin.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public interface InterfaceC0044a<T> {
        void a(T t3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultAdManager.java */
    /* loaded from: classes2.dex */
    public interface b<T> {
        void a(InterfaceC0044a<T> interfaceC0044a);
    }

    /* compiled from: DefaultAdManager.java */
    /* loaded from: classes2.dex */
    private interface c<T> extends InterfaceC0044a<T> {
        void a();
    }

    /* compiled from: DefaultAdManager.java */
    /* loaded from: classes2.dex */
    private static final class d implements TTAdNative {

        /* renamed from: a  reason: collision with root package name */
        private b<TTAdNative> f10540a;

        public d(b<TTAdNative> bVar) {
            this.f10540a = bVar;
        }

        private final void a(CommonListener commonListener, InterfaceC0044a<TTAdNative> interfaceC0044a) {
            try {
                this.f10540a.a(interfaceC0044a);
            } catch (Throwable th) {
                if (commonListener != null) {
                    commonListener.onError(4202, "Load ad failed: " + th.getMessage());
                }
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadBannerAd(final AdSlot adSlot, final TTAdNative.BannerAdListener bannerAdListener) {
            a(bannerAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.10
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadBannerAd(adSlot, bannerAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadBannerExpressAd(final AdSlot adSlot, final TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            a(nativeExpressAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.5
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadBannerExpressAd(adSlot, nativeExpressAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadDrawFeedAd(final AdSlot adSlot, final TTAdNative.DrawFeedAdListener drawFeedAdListener) {
            a(drawFeedAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.8
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadDrawFeedAd(adSlot, drawFeedAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadExpressDrawFeedAd(final AdSlot adSlot, final TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            a(nativeExpressAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.4
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadExpressDrawFeedAd(adSlot, nativeExpressAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadFeedAd(final AdSlot adSlot, final TTAdNative.FeedAdListener feedAdListener) {
            a(feedAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.1
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadFeedAd(adSlot, feedAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadFullScreenVideoAd(final AdSlot adSlot, final TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
            a(fullScreenVideoAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.2
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadFullScreenVideoAd(adSlot, fullScreenVideoAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadInteractionAd(final AdSlot adSlot, final TTAdNative.InteractionAdListener interactionAdListener) {
            a(interactionAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.11
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadInteractionAd(adSlot, interactionAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadInteractionExpressAd(final AdSlot adSlot, final TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            a(nativeExpressAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.6
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadInteractionExpressAd(adSlot, nativeExpressAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadNativeAd(final AdSlot adSlot, final TTAdNative.NativeAdListener nativeAdListener) {
            a(nativeAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.9
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadNativeAd(adSlot, nativeAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadNativeExpressAd(final AdSlot adSlot, final TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
            a(nativeExpressAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.3
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadNativeExpressAd(adSlot, nativeExpressAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadRewardVideoAd(final AdSlot adSlot, final TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
            a(rewardVideoAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.14
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadRewardVideoAd(adSlot, rewardVideoAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadSplashAd(final AdSlot adSlot, final TTAdNative.SplashAdListener splashAdListener, final int i2) {
            a(splashAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.12
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadSplashAd(adSlot, splashAdListener, i2);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadStream(final AdSlot adSlot, final TTAdNative.FeedAdListener feedAdListener) {
            a(feedAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.7
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadStream(adSlot, feedAdListener);
                }
            });
        }

        @Override // com.bytedance.sdk.openadsdk.TTAdNative
        public void loadSplashAd(final AdSlot adSlot, final TTAdNative.SplashAdListener splashAdListener) {
            a(splashAdListener, new InterfaceC0044a<TTAdNative>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.d.13
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdNative tTAdNative) {
                    tTAdNative.loadSplashAd(adSlot, splashAdListener);
                }
            });
        }
    }

    a() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void call(final InterfaceC0044a<TTAdManager> interfaceC0044a) {
        if (this.f10507b != null) {
            try {
                interfaceC0044a.a(this.f10507b);
                return;
            } catch (Throwable th) {
                com.bytedance.sdk.openadsdk.api.a.d("PluginDefaultAdManager", "Unexpected manager call error: " + th.getMessage());
                e.a(th);
                return;
            }
        }
        ScheduledExecutorService scheduledExecutorService = f.f10615a;
        if (scheduledExecutorService != null) {
            scheduledExecutorService.submit(new Runnable() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.8
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (a.this.f10507b != null) {
                            interfaceC0044a.a(a.this.f10507b);
                            return;
                        }
                        InterfaceC0044a interfaceC0044a2 = interfaceC0044a;
                        if (interfaceC0044a2 instanceof c) {
                            ((c) interfaceC0044a2).a();
                        }
                        com.bytedance.sdk.openadsdk.api.a.d("PluginDefaultAdManager", "Not ready, no manager");
                    } catch (Throwable th2) {
                        com.bytedance.sdk.openadsdk.api.a.d("PluginDefaultAdManager", "Unexpected manager call error: " + th2.getMessage());
                        e.a(th2);
                    }
                }
            });
        } else {
            com.bytedance.sdk.openadsdk.api.a.d("PluginDefaultAdManager", "Not ready, no executor");
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public TTAdNative createAdNative(Context context) {
        return new d(new AnonymousClass1(new WeakReference(context)));
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getBiddingToken(AdSlot adSlot) {
        if (this.f10507b != null) {
            return this.f10507b.getBiddingToken(adSlot);
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public <T> T getExtra(final Class<T> cls, final Bundle bundle) {
        if (this.f10507b != null) {
            return (T) this.f10507b.getExtra(cls, bundle);
        }
        if (cls == Bundle.class && bundle != null && bundle.getInt("action", 0) == 1) {
            call(new c<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.4
                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.c
                public void a() {
                    com.bytedance.sdk.openadsdk.api.plugin.d.a(bundle);
                }

                @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
                public void a(TTAdManager tTAdManager) {
                    tTAdManager.getExtra(cls, bundle);
                }
            });
            return null;
        }
        call(new InterfaceC0044a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.5
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
            public void a(TTAdManager tTAdManager) {
                tTAdManager.getExtra(cls, bundle);
            }
        });
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getPluginVersion() {
        return this.f10507b != null ? this.f10507b.getPluginVersion() : "";
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getSDKVersion() {
        return "4.6.0.2";
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public int getThemeStatus() {
        if (this.f10507b != null) {
            return this.f10507b.getThemeStatus();
        }
        return 0;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean onlyVerityPlayable(String str, int i2, String str2, String str3, String str4) {
        if (this.f10507b != null) {
            return this.f10507b.onlyVerityPlayable(str, i2, str2, str3, str4);
        }
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void register(final Object obj) {
        final Bundle bundle;
        if (obj instanceof TTPluginListener) {
            TTPluginListener tTPluginListener = (TTPluginListener) obj;
            bundle = e.a(TTAppContextHolder.getContext()).a(tTPluginListener.packageName(), tTPluginListener.config());
        } else {
            bundle = obj;
        }
        call(new InterfaceC0044a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.2
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
            public void a(TTAdManager tTAdManager) {
                tTAdManager.register(bundle);
                if (obj instanceof TTPluginListener) {
                    e.a(TTAppContextHolder.getContext()).a((TTPluginListener) obj);
                }
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void requestPermissionIfNecessary(final Context context) {
        call(new InterfaceC0044a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.6
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
            public void a(TTAdManager tTAdManager) {
                tTAdManager.requestPermissionIfNecessary(context);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void setThemeStatus(final int i2) {
        call(new InterfaceC0044a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.7
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
            public void a(TTAdManager tTAdManager) {
                a.this.f10507b.setThemeStatus(i2);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public boolean tryShowInstallDialogWhenExit(Activity activity, ExitInstallListener exitInstallListener) {
        return this.f10507b != null && this.f10507b.tryShowInstallDialogWhenExit(activity, exitInstallListener);
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public void unregister(final Object obj) {
        call(new InterfaceC0044a<TTAdManager>() { // from class: com.bytedance.sdk.openadsdk.api.plugin.a.3
            @Override // com.bytedance.sdk.openadsdk.api.plugin.a.InterfaceC0044a
            public void a(TTAdManager tTAdManager) {
                tTAdManager.unregister(obj);
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.TTAdManager
    public String getBiddingToken(AdSlot adSlot, boolean z3, int i2) {
        if (this.f10507b != null) {
            return this.f10507b.getBiddingToken(adSlot, z3, i2);
        }
        return null;
    }

    public void a(TTAdManager tTAdManager) {
        this.f10507b = tTAdManager;
    }
}
