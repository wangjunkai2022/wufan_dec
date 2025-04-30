package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
/* compiled from: BottomSheetDialogFragment.java */
/* loaded from: classes2.dex */
public class b extends AppCompatDialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private boolean f14276a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: BottomSheetDialogFragment.java */
    /* renamed from: com.google.android.material.bottomsheet.b$b  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0101b extends BottomSheetBehavior.f {
        private C0101b() {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void b(@NonNull View view, float f4) {
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.f
        public void c(@NonNull View view, int i2) {
            if (i2 == 5) {
                b.this.N();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void N() {
        if (this.f14276a) {
            super.dismissAllowingStateLoss();
        } else {
            super.dismiss();
        }
    }

    private void O(@NonNull BottomSheetBehavior<?> bottomSheetBehavior, boolean z3) {
        this.f14276a = z3;
        if (bottomSheetBehavior.O() == 5) {
            N();
            return;
        }
        if (getDialog() instanceof com.google.android.material.bottomsheet.a) {
            ((com.google.android.material.bottomsheet.a) getDialog()).i();
        }
        bottomSheetBehavior.s(new C0101b());
        bottomSheetBehavior.q0(5);
    }

    private boolean P(boolean z3) {
        Dialog dialog = getDialog();
        if (dialog instanceof com.google.android.material.bottomsheet.a) {
            com.google.android.material.bottomsheet.a aVar = (com.google.android.material.bottomsheet.a) dialog;
            BottomSheetBehavior<FrameLayout> f4 = aVar.f();
            if (f4.U() && aVar.g()) {
                O(f4, z3);
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismiss() {
        if (P(false)) {
            return;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public void dismissAllowingStateLoss() {
        if (P(true)) {
            return;
        }
        super.dismissAllowingStateLoss();
    }

    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        return new com.google.android.material.bottomsheet.a(getContext(), getTheme());
    }
}
