package com.join.android.app.common.http;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bun.miitmdid.core.MdidSdkHelper;
import com.bun.miitmdid.interfaces.IIdentifierListener;
import com.bun.miitmdid.interfaces.IdSupplier;
/* loaded from: classes.dex */
public class MiitHelper implements IIdentifierListener {
    private a _listener;

    /* loaded from: classes.dex */
    public interface a {
        void a(@NonNull String str);
    }

    public MiitHelper(a aVar) {
        this._listener = aVar;
    }

    private int CallFromReflect(Context context) {
        try {
            return MdidSdkHelper.InitSdk(context, true, this);
        } catch (Exception e4) {
            e4.printStackTrace();
            return 0;
        }
    }

    @Override // com.bun.miitmdid.interfaces.IIdentifierListener
    public void OnSupport(boolean z3, IdSupplier idSupplier) {
        if (idSupplier == null) {
            return;
        }
        String oaid = idSupplier.getOAID();
        a aVar = this._listener;
        if (aVar != null) {
            aVar.a(oaid);
        }
    }

    public void getDeviceIds(Context context) {
        System.currentTimeMillis();
        int CallFromReflect = CallFromReflect(context);
        System.currentTimeMillis();
        if (CallFromReflect != 1008612 && CallFromReflect == 1008613) {
        }
        StringBuilder sb = new StringBuilder();
        sb.append("return value: ");
        sb.append(String.valueOf(CallFromReflect));
    }
}
