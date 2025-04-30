package com.google.android.material.datepicker;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.google.android.material.textfield.TextInputLayout;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;
/* compiled from: DateFormatTextWatcher.java */
/* loaded from: classes2.dex */
abstract class c extends com.google.android.material.internal.n {

    /* renamed from: g  reason: collision with root package name */
    private static final int f14784g = 1000;
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final TextInputLayout f14785a;

    /* renamed from: b  reason: collision with root package name */
    private final DateFormat f14786b;

    /* renamed from: c  reason: collision with root package name */
    private final CalendarConstraints f14787c;

    /* renamed from: d  reason: collision with root package name */
    private final String f14788d;

    /* renamed from: e  reason: collision with root package name */
    private final Runnable f14789e;

    /* renamed from: f  reason: collision with root package name */
    private Runnable f14790f;

    /* compiled from: DateFormatTextWatcher.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f14791a;

        a(String str) {
            this.f14791a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            TextInputLayout textInputLayout = c.this.f14785a;
            DateFormat dateFormat = c.this.f14786b;
            Context context = textInputLayout.getContext();
            String string = context.getString(R.string.mtrl_picker_invalid_format);
            String format = String.format(context.getString(R.string.mtrl_picker_invalid_format_use), this.f14791a);
            String format2 = String.format(context.getString(R.string.mtrl_picker_invalid_format_example), dateFormat.format(new Date(o.t().getTimeInMillis())));
            textInputLayout.setError(string + "\n" + format + "\n" + format2);
            c.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DateFormatTextWatcher.java */
    /* loaded from: classes2.dex */
    public class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ long f14793a;

        b(long j4) {
            this.f14793a = j4;
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f14785a.setError(String.format(c.this.f14788d, d.c(this.f14793a)));
            c.this.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str, DateFormat dateFormat, @NonNull TextInputLayout textInputLayout, CalendarConstraints calendarConstraints) {
        this.f14786b = dateFormat;
        this.f14785a = textInputLayout;
        this.f14787c = calendarConstraints;
        this.f14788d = textInputLayout.getContext().getString(R.string.mtrl_picker_out_of_range);
        this.f14789e = new a(str);
    }

    private Runnable d(long j4) {
        return new b(j4);
    }

    void e() {
    }

    abstract void f(@Nullable Long l4);

    public void g(View view, Runnable runnable) {
        view.postDelayed(runnable, 1000L);
    }

    @Override // com.google.android.material.internal.n, android.text.TextWatcher
    public void onTextChanged(@NonNull CharSequence charSequence, int i2, int i4, int i5) {
        this.f14785a.removeCallbacks(this.f14789e);
        this.f14785a.removeCallbacks(this.f14790f);
        this.f14785a.setError(null);
        f(null);
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        try {
            Date parse = this.f14786b.parse(charSequence.toString());
            this.f14785a.setError(null);
            long time = parse.getTime();
            if (this.f14787c.f().m(time) && this.f14787c.l(time)) {
                f(Long.valueOf(parse.getTime()));
                return;
            }
            Runnable d4 = d(time);
            this.f14790f = d4;
            g(this.f14785a, d4);
        } catch (ParseException unused) {
            g(this.f14785a, this.f14789e);
        }
    }
}
