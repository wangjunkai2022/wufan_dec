package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import androidx.annotation.ColorInt;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.graphics.ColorUtils;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public final class AppCompatDrawableManager {

    /* renamed from: b  reason: collision with root package name */
    private static final String f966b = "AppCompatDrawableManag";

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f967c = false;

    /* renamed from: d  reason: collision with root package name */
    private static final PorterDuff.Mode f968d = PorterDuff.Mode.SRC_IN;

    /* renamed from: e  reason: collision with root package name */
    private static AppCompatDrawableManager f969e;

    /* renamed from: a  reason: collision with root package name */
    private ResourceManagerInternal f970a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ResourceManagerInternal.r(drawable, tintInfo, iArr);
    }

    public static synchronized AppCompatDrawableManager get() {
        AppCompatDrawableManager appCompatDrawableManager;
        synchronized (AppCompatDrawableManager.class) {
            if (f969e == null) {
                preload();
            }
            appCompatDrawableManager = f969e;
        }
        return appCompatDrawableManager;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (AppCompatDrawableManager.class) {
            porterDuffColorFilter = ResourceManagerInternal.getPorterDuffColorFilter(i2, mode);
        }
        return porterDuffColorFilter;
    }

    public static synchronized void preload() {
        synchronized (AppCompatDrawableManager.class) {
            if (f969e == null) {
                AppCompatDrawableManager appCompatDrawableManager = new AppCompatDrawableManager();
                f969e = appCompatDrawableManager;
                appCompatDrawableManager.f970a = ResourceManagerInternal.get();
                f969e.f970a.setHooks(new ResourceManagerInternal.ResourceManagerHooks() { // from class: androidx.appcompat.widget.AppCompatDrawableManager.1

                    /* renamed from: a  reason: collision with root package name */
                    private final int[] f971a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

                    /* renamed from: b  reason: collision with root package name */
                    private final int[] f972b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

                    /* renamed from: c  reason: collision with root package name */
                    private final int[] f973c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};

                    /* renamed from: d  reason: collision with root package name */
                    private final int[] f974d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

                    /* renamed from: e  reason: collision with root package name */
                    private final int[] f975e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

                    /* renamed from: f  reason: collision with root package name */
                    private final int[] f976f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

                    private boolean a(int[] iArr, int i2) {
                        for (int i4 : iArr) {
                            if (i4 == i2) {
                                return true;
                            }
                        }
                        return false;
                    }

                    private ColorStateList b(@NonNull Context context) {
                        return c(context, 0);
                    }

                    private ColorStateList c(@NonNull Context context, @ColorInt int i2) {
                        int themeAttrColor = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlHighlight);
                        return new ColorStateList(new int[][]{ThemeUtils.f1452c, ThemeUtils.f1455f, ThemeUtils.f1453d, ThemeUtils.f1459j}, new int[]{ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorButtonNormal), ColorUtils.compositeColors(themeAttrColor, i2), ColorUtils.compositeColors(themeAttrColor, i2), i2});
                    }

                    private ColorStateList d(@NonNull Context context) {
                        return c(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorAccent));
                    }

                    private ColorStateList e(@NonNull Context context) {
                        return c(context, ThemeUtils.getThemeAttrColor(context, R.attr.colorButtonNormal));
                    }

                    private ColorStateList f(Context context) {
                        int[][] iArr = new int[3];
                        int[] iArr2 = new int[3];
                        int i2 = R.attr.colorSwitchThumbNormal;
                        ColorStateList themeAttrColorStateList = ThemeUtils.getThemeAttrColorStateList(context, i2);
                        if (themeAttrColorStateList != null && themeAttrColorStateList.isStateful()) {
                            iArr[0] = ThemeUtils.f1452c;
                            iArr2[0] = themeAttrColorStateList.getColorForState(iArr[0], 0);
                            iArr[1] = ThemeUtils.f1456g;
                            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
                            iArr[2] = ThemeUtils.f1459j;
                            iArr2[2] = themeAttrColorStateList.getDefaultColor();
                        } else {
                            iArr[0] = ThemeUtils.f1452c;
                            iArr2[0] = ThemeUtils.getDisabledThemeAttrColor(context, i2);
                            iArr[1] = ThemeUtils.f1456g;
                            iArr2[1] = ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated);
                            iArr[2] = ThemeUtils.f1459j;
                            iArr2[2] = ThemeUtils.getThemeAttrColor(context, i2);
                        }
                        return new ColorStateList(iArr, iArr2);
                    }

                    private LayerDrawable g(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, @DimenRes int i2) {
                        BitmapDrawable bitmapDrawable;
                        BitmapDrawable bitmapDrawable2;
                        BitmapDrawable bitmapDrawable3;
                        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i2);
                        Drawable drawable = resourceManagerInternal.getDrawable(context, R.drawable.abc_star_black_48dp);
                        Drawable drawable2 = resourceManagerInternal.getDrawable(context, R.drawable.abc_star_half_black_48dp);
                        if ((drawable instanceof BitmapDrawable) && drawable.getIntrinsicWidth() == dimensionPixelSize && drawable.getIntrinsicHeight() == dimensionPixelSize) {
                            bitmapDrawable = (BitmapDrawable) drawable;
                            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
                        } else {
                            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                            Canvas canvas = new Canvas(createBitmap);
                            drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                            drawable.draw(canvas);
                            bitmapDrawable = new BitmapDrawable(createBitmap);
                            bitmapDrawable2 = new BitmapDrawable(createBitmap);
                        }
                        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
                        if ((drawable2 instanceof BitmapDrawable) && drawable2.getIntrinsicWidth() == dimensionPixelSize && drawable2.getIntrinsicHeight() == dimensionPixelSize) {
                            bitmapDrawable3 = (BitmapDrawable) drawable2;
                        } else {
                            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                            Canvas canvas2 = new Canvas(createBitmap2);
                            drawable2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                            drawable2.draw(canvas2);
                            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
                        }
                        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
                        layerDrawable.setId(0, 16908288);
                        layerDrawable.setId(1, 16908303);
                        layerDrawable.setId(2, 16908301);
                        return layerDrawable;
                    }

                    private void h(Drawable drawable, int i2, PorterDuff.Mode mode) {
                        if (DrawableUtils.canSafelyMutateDrawable(drawable)) {
                            drawable = drawable.mutate();
                        }
                        if (mode == null) {
                            mode = AppCompatDrawableManager.f968d;
                        }
                        drawable.setColorFilter(AppCompatDrawableManager.getPorterDuffColorFilter(i2, mode));
                    }

                    @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                    public Drawable createDrawableFor(@NonNull ResourceManagerInternal resourceManagerInternal, @NonNull Context context, int i2) {
                        if (i2 == R.drawable.abc_cab_background_top_material) {
                            return new LayerDrawable(new Drawable[]{resourceManagerInternal.getDrawable(context, R.drawable.abc_cab_background_internal_bg), resourceManagerInternal.getDrawable(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
                        }
                        if (i2 == R.drawable.abc_ratingbar_material) {
                            return g(resourceManagerInternal, context, R.dimen.abc_star_big);
                        }
                        if (i2 == R.drawable.abc_ratingbar_indicator_material) {
                            return g(resourceManagerInternal, context, R.dimen.abc_star_medium);
                        }
                        if (i2 == R.drawable.abc_ratingbar_small_material) {
                            return g(resourceManagerInternal, context, R.dimen.abc_star_small);
                        }
                        return null;
                    }

                    @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                    public ColorStateList getTintListForDrawableRes(@NonNull Context context, int i2) {
                        if (i2 == R.drawable.abc_edit_text_material) {
                            return AppCompatResources.getColorStateList(context, R.color.abc_tint_edittext);
                        }
                        if (i2 == R.drawable.abc_switch_track_mtrl_alpha) {
                            return AppCompatResources.getColorStateList(context, R.color.abc_tint_switch_track);
                        }
                        if (i2 == R.drawable.abc_switch_thumb_material) {
                            return f(context);
                        }
                        if (i2 == R.drawable.abc_btn_default_mtrl_shape) {
                            return e(context);
                        }
                        if (i2 == R.drawable.abc_btn_borderless_material) {
                            return b(context);
                        }
                        if (i2 == R.drawable.abc_btn_colored_material) {
                            return d(context);
                        }
                        if (i2 != R.drawable.abc_spinner_mtrl_am_alpha && i2 != R.drawable.abc_spinner_textfield_background_material) {
                            if (a(this.f972b, i2)) {
                                return ThemeUtils.getThemeAttrColorStateList(context, R.attr.colorControlNormal);
                            }
                            if (a(this.f975e, i2)) {
                                return AppCompatResources.getColorStateList(context, R.color.abc_tint_default);
                            }
                            if (a(this.f976f, i2)) {
                                return AppCompatResources.getColorStateList(context, R.color.abc_tint_btn_checkable);
                            }
                            if (i2 == R.drawable.abc_seekbar_thumb_material) {
                                return AppCompatResources.getColorStateList(context, R.color.abc_tint_seek_thumb);
                            }
                            return null;
                        }
                        return AppCompatResources.getColorStateList(context, R.color.abc_tint_spinner);
                    }

                    @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                    public PorterDuff.Mode getTintModeForDrawableRes(int i2) {
                        if (i2 == R.drawable.abc_switch_thumb_material) {
                            return PorterDuff.Mode.MULTIPLY;
                        }
                        return null;
                    }

                    @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                    public boolean tintDrawable(@NonNull Context context, int i2, @NonNull Drawable drawable) {
                        if (i2 == R.drawable.abc_seekbar_track_material) {
                            LayerDrawable layerDrawable = (LayerDrawable) drawable;
                            Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(16908288);
                            int i4 = R.attr.colorControlNormal;
                            h(findDrawableByLayerId, ThemeUtils.getThemeAttrColor(context, i4), AppCompatDrawableManager.f968d);
                            h(layerDrawable.findDrawableByLayerId(16908303), ThemeUtils.getThemeAttrColor(context, i4), AppCompatDrawableManager.f968d);
                            h(layerDrawable.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, R.attr.colorControlActivated), AppCompatDrawableManager.f968d);
                            return true;
                        } else if (i2 == R.drawable.abc_ratingbar_material || i2 == R.drawable.abc_ratingbar_indicator_material || i2 == R.drawable.abc_ratingbar_small_material) {
                            LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                            h(layerDrawable2.findDrawableByLayerId(16908288), ThemeUtils.getDisabledThemeAttrColor(context, R.attr.colorControlNormal), AppCompatDrawableManager.f968d);
                            Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(16908303);
                            int i5 = R.attr.colorControlActivated;
                            h(findDrawableByLayerId2, ThemeUtils.getThemeAttrColor(context, i5), AppCompatDrawableManager.f968d);
                            h(layerDrawable2.findDrawableByLayerId(16908301), ThemeUtils.getThemeAttrColor(context, i5), AppCompatDrawableManager.f968d);
                            return true;
                        } else {
                            return false;
                        }
                    }

                    /* JADX WARN: Removed duplicated region for block: B:21:0x0046  */
                    /* JADX WARN: Removed duplicated region for block: B:28:0x0061 A[RETURN] */
                    @Override // androidx.appcompat.widget.ResourceManagerInternal.ResourceManagerHooks
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct add '--show-bad-code' argument
                    */
                    public boolean tintDrawableUsingColorFilter(@androidx.annotation.NonNull android.content.Context r7, int r8, @androidx.annotation.NonNull android.graphics.drawable.Drawable r9) {
                        /*
                            r6 = this;
                            android.graphics.PorterDuff$Mode r0 = androidx.appcompat.widget.AppCompatDrawableManager.a()
                            int[] r1 = r6.f971a
                            boolean r1 = r6.a(r1, r8)
                            r2 = 16842801(0x1010031, float:2.3693695E-38)
                            r3 = -1
                            r4 = 0
                            r5 = 1
                            if (r1 == 0) goto L17
                            int r2 = androidx.appcompat.R.attr.colorControlNormal
                        L14:
                            r8 = -1
                        L15:
                            r1 = 1
                            goto L44
                        L17:
                            int[] r1 = r6.f973c
                            boolean r1 = r6.a(r1, r8)
                            if (r1 == 0) goto L22
                            int r2 = androidx.appcompat.R.attr.colorControlActivated
                            goto L14
                        L22:
                            int[] r1 = r6.f974d
                            boolean r1 = r6.a(r1, r8)
                            if (r1 == 0) goto L2d
                            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.MULTIPLY
                            goto L14
                        L2d:
                            int r1 = androidx.appcompat.R.drawable.abc_list_divider_mtrl_alpha
                            if (r8 != r1) goto L3c
                            r2 = 16842800(0x1010030, float:2.3693693E-38)
                            r8 = 1109603123(0x42233333, float:40.8)
                            int r8 = java.lang.Math.round(r8)
                            goto L15
                        L3c:
                            int r1 = androidx.appcompat.R.drawable.abc_dialog_material_background
                            if (r8 != r1) goto L41
                            goto L14
                        L41:
                            r8 = -1
                            r1 = 0
                            r2 = 0
                        L44:
                            if (r1 == 0) goto L61
                            boolean r1 = androidx.appcompat.widget.DrawableUtils.canSafelyMutateDrawable(r9)
                            if (r1 == 0) goto L50
                            android.graphics.drawable.Drawable r9 = r9.mutate()
                        L50:
                            int r7 = androidx.appcompat.widget.ThemeUtils.getThemeAttrColor(r7, r2)
                            android.graphics.PorterDuffColorFilter r7 = androidx.appcompat.widget.AppCompatDrawableManager.getPorterDuffColorFilter(r7, r0)
                            r9.setColorFilter(r7)
                            if (r8 == r3) goto L60
                            r9.setAlpha(r8)
                        L60:
                            return r5
                        L61:
                            return r4
                        */
                        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.AppCompatDrawableManager.AnonymousClass1.tintDrawableUsingColorFilter(android.content.Context, int, android.graphics.drawable.Drawable):boolean");
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized Drawable b(@NonNull Context context, @DrawableRes int i2, boolean z3) {
        return this.f970a.i(context, i2, z3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized ColorStateList c(@NonNull Context context, @DrawableRes int i2) {
        return this.f970a.j(context, i2);
    }

    synchronized Drawable d(@NonNull Context context, @NonNull VectorEnabledTintResources vectorEnabledTintResources, @DrawableRes int i2) {
        return this.f970a.p(context, vectorEnabledTintResources, i2);
    }

    boolean f(@NonNull Context context, @DrawableRes int i2, @NonNull Drawable drawable) {
        return this.f970a.s(context, i2, drawable);
    }

    public synchronized Drawable getDrawable(@NonNull Context context, @DrawableRes int i2) {
        return this.f970a.getDrawable(context, i2);
    }

    public synchronized void onConfigurationChanged(@NonNull Context context) {
        this.f970a.onConfigurationChanged(context);
    }
}
