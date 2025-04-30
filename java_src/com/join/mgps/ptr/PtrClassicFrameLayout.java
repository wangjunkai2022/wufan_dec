package com.join.mgps.ptr;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.b0;
import com.join.mgps.ptr.PtrFrameLayout;
import com.join.mgps.ptr.header.DropBounceHeaderView;
import com.join.mgps.ptr.header.MaterialHeader;
import com.join.mgps.ptr.header.RentalsSunHeaderView;
import com.join.mgps.ptr.header.StoreHouseHeader;
/* loaded from: classes4.dex */
public class PtrClassicFrameLayout extends PtrFrameLayout {

    /* renamed from: s0  reason: collision with root package name */
    private Style f51124s0;

    /* renamed from: t0  reason: collision with root package name */
    private PtrUIHeader f51125t0;

    /* renamed from: u0  reason: collision with root package name */
    private PtrClassicDefaultHeader f51126u0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public enum Style {
        Classical,
        DropBounce,
        Material,
        RentalsSun,
        StoreHouse
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f51127a;

        static {
            int[] iArr = new int[Style.values().length];
            f51127a = iArr;
            try {
                iArr[Style.Classical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51127a[Style.DropBounce.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51127a[Style.Material.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51127a[Style.RentalsSun.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f51127a[Style.StoreHouse.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public PtrClassicFrameLayout(Context context) {
        super(context);
        this.f51124s0 = Style.DropBounce;
        T();
    }

    private void N() {
        PtrClassicDefaultHeader ptrClassicDefaultHeader = new PtrClassicDefaultHeader(getContext());
        this.f51126u0 = ptrClassicDefaultHeader;
        setHeaderView(ptrClassicDefaultHeader);
        e(this.f51126u0);
    }

    private void O() {
        Context context = getContext();
        DropBounceHeaderView dropBounceHeaderView = new DropBounceHeaderView(context);
        dropBounceHeaderView.setUp(this);
        dropBounceHeaderView.setColor(Color.parseColor("#4EA9E9"));
        dropBounceHeaderView.setLayoutParams(new PtrFrameLayout.LayoutParams(-1, 50));
        dropBounceHeaderView.setPadding(0, b0.a(context, 8.0f), 0, b0.a(context, 9.0f));
        setLoadingMinTime(1000);
        setDurationToCloseHeader(500);
        this.f51125t0 = dropBounceHeaderView;
    }

    private void P() {
        MaterialHeader materialHeader = new MaterialHeader(getContext());
        materialHeader.setColorSchemeColors(getResources().getIntArray(R.array.materia_colors));
        materialHeader.setLayoutParams(new PtrFrameLayout.LayoutParams(-1, -2));
        materialHeader.setPadding(0, com.join.mgps.ptr.util.b.b(15.0f), 0, com.join.mgps.ptr.util.b.b(10.0f));
        materialHeader.setPtrFrameLayout(this);
        this.f51125t0 = materialHeader;
    }

    private void Q() {
        RentalsSunHeaderView rentalsSunHeaderView = new RentalsSunHeaderView(getContext());
        rentalsSunHeaderView.setLayoutParams(new PtrFrameLayout.LayoutParams(-1, -2));
        rentalsSunHeaderView.setPadding(0, com.join.mgps.ptr.util.b.b(15.0f), 0, com.join.mgps.ptr.util.b.b(10.0f));
        rentalsSunHeaderView.setUp(this);
        this.f51125t0 = rentalsSunHeaderView;
    }

    private void R() {
        StoreHouseHeader storeHouseHeader = new StoreHouseHeader(getContext());
        storeHouseHeader.setPadding(0, com.join.mgps.ptr.util.b.b(15.0f), 0, 0);
        storeHouseHeader.n(new String[]{"PAPA LOADING..."}[0]);
        setBackgroundColor(getResources().getColor(R.color.merchant_listing_name_color));
        this.f51125t0 = storeHouseHeader;
    }

    private void S() {
        int i2 = this.f51158z;
        if (i2 == 1) {
            this.f51124s0 = Style.Classical;
        } else if (i2 == 2) {
            this.f51124s0 = Style.DropBounce;
        } else if (i2 == 3) {
            this.f51124s0 = Style.Material;
        } else if (i2 == 4) {
            this.f51124s0 = Style.RentalsSun;
        } else if (i2 == 5) {
            this.f51124s0 = Style.StoreHouse;
        } else {
            this.f51124s0 = Style.DropBounce;
        }
    }

    private void T() {
        S();
        int i2 = a.f51127a[this.f51124s0.ordinal()];
        if (i2 != 1) {
            if (i2 == 2) {
                O();
            } else if (i2 == 3) {
                P();
            } else if (i2 == 4) {
                Q();
            } else if (i2 == 5) {
                R();
            }
            setHeaderView(this.f51125t0);
            e(this.f51125t0);
            return;
        }
        N();
    }

    public PtrClassicDefaultHeader getClassicHeader() {
        return this.f51126u0;
    }

    public PtrUIHeader getHeader() {
        return this.f51125t0;
    }

    public void setLastUpdateTimeKey(String str) {
        PtrClassicDefaultHeader ptrClassicDefaultHeader = this.f51126u0;
        if (ptrClassicDefaultHeader != null) {
            ptrClassicDefaultHeader.setLastUpdateTimeKey(str);
        }
    }

    public void setLastUpdateTimeRelateObject(Object obj) {
        PtrClassicDefaultHeader ptrClassicDefaultHeader = this.f51126u0;
        if (ptrClassicDefaultHeader != null) {
            ptrClassicDefaultHeader.setLastUpdateTimeRelateObject(obj);
        }
    }

    public PtrClassicFrameLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f51124s0 = Style.DropBounce;
        T();
    }

    public PtrClassicFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f51124s0 = Style.DropBounce;
        T();
    }
}
