package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class SpannableBuilder extends SpannableStringBuilder {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Class<?> f5602a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final List<WatcherWrapper> f5603b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class WatcherWrapper implements TextWatcher, SpanWatcher {

        /* renamed from: a  reason: collision with root package name */
        final Object f5604a;

        /* renamed from: b  reason: collision with root package name */
        private final AtomicInteger f5605b = new AtomicInteger(0);

        WatcherWrapper(Object obj) {
            this.f5604a = obj;
        }

        private boolean b(Object obj) {
            return obj instanceof EmojiSpan;
        }

        final void a() {
            this.f5605b.incrementAndGet();
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            ((TextWatcher) this.f5604a).afterTextChanged(editable);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            ((TextWatcher) this.f5604a).beforeTextChanged(charSequence, i2, i4, i5);
        }

        final void c() {
            this.f5605b.decrementAndGet();
        }

        @Override // android.text.SpanWatcher
        public void onSpanAdded(Spannable spannable, Object obj, int i2, int i4) {
            if (this.f5605b.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f5604a).onSpanAdded(spannable, obj, i2, i4);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanChanged(Spannable spannable, Object obj, int i2, int i4, int i5, int i6) {
            if (this.f5605b.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f5604a).onSpanChanged(spannable, obj, i2, i4, i5, i6);
            }
        }

        @Override // android.text.SpanWatcher
        public void onSpanRemoved(Spannable spannable, Object obj, int i2, int i4) {
            if (this.f5605b.get() <= 0 || !b(obj)) {
                ((SpanWatcher) this.f5604a).onSpanRemoved(spannable, obj, i2, i4);
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
            ((TextWatcher) this.f5604a).onTextChanged(charSequence, i2, i4, i5);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    SpannableBuilder(@NonNull Class<?> cls) {
        this.f5603b = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.f5602a = cls;
    }

    private void a() {
        for (int i2 = 0; i2 < this.f5603b.size(); i2++) {
            this.f5603b.get(i2).a();
        }
    }

    private void b() {
        for (int i2 = 0; i2 < this.f5603b.size(); i2++) {
            this.f5603b.get(i2).onTextChanged(this, 0, length(), length());
        }
    }

    private WatcherWrapper c(Object obj) {
        for (int i2 = 0; i2 < this.f5603b.size(); i2++) {
            WatcherWrapper watcherWrapper = this.f5603b.get(i2);
            if (watcherWrapper.f5604a == obj) {
                return watcherWrapper;
            }
        }
        return null;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static SpannableBuilder create(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        return new SpannableBuilder(cls, charSequence);
    }

    private boolean d(@NonNull Class<?> cls) {
        return this.f5602a == cls;
    }

    private boolean e(@Nullable Object obj) {
        return obj != null && d(obj.getClass());
    }

    private void f() {
        for (int i2 = 0; i2 < this.f5603b.size(); i2++) {
            this.f5603b.get(i2).c();
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void beginBatchEdit() {
        a();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void endBatchEdit() {
        f();
        b();
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanEnd(@Nullable Object obj) {
        WatcherWrapper c4;
        if (e(obj) && (c4 = c(obj)) != null) {
            obj = c4;
        }
        return super.getSpanEnd(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanFlags(@Nullable Object obj) {
        WatcherWrapper c4;
        if (e(obj) && (c4 = c(obj)) != null) {
            obj = c4;
        }
        return super.getSpanFlags(obj);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int getSpanStart(@Nullable Object obj) {
        WatcherWrapper c4;
        if (e(obj) && (c4 = c(obj)) != null) {
            obj = c4;
        }
        return super.getSpanStart(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    @SuppressLint({"UnknownNullness"})
    public <T> T[] getSpans(int i2, int i4, @NonNull Class<T> cls) {
        if (d(cls)) {
            WatcherWrapper[] watcherWrapperArr = (WatcherWrapper[]) super.getSpans(i2, i4, WatcherWrapper.class);
            T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, watcherWrapperArr.length));
            for (int i5 = 0; i5 < watcherWrapperArr.length; i5++) {
                tArr[i5] = watcherWrapperArr[i5].f5604a;
            }
            return tArr;
        }
        return (T[]) super.getSpans(i2, i4, cls);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spanned
    public int nextSpanTransition(int i2, int i4, @Nullable Class cls) {
        return super.nextSpanTransition(i2, i4, (cls == null || d(cls)) ? WatcherWrapper.class : WatcherWrapper.class);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void removeSpan(@Nullable Object obj) {
        WatcherWrapper watcherWrapper;
        if (e(obj)) {
            watcherWrapper = c(obj);
            if (watcherWrapper != null) {
                obj = watcherWrapper;
            }
        } else {
            watcherWrapper = null;
        }
        super.removeSpan(obj);
        if (watcherWrapper != null) {
            this.f5603b.remove(watcherWrapper);
        }
    }

    @Override // android.text.SpannableStringBuilder, android.text.Spannable
    public void setSpan(@Nullable Object obj, int i2, int i4, int i5) {
        if (e(obj)) {
            WatcherWrapper watcherWrapper = new WatcherWrapper(obj);
            this.f5603b.add(watcherWrapper);
            obj = watcherWrapper;
        }
        super.setSpan(obj, i2, i4, i5);
    }

    @Override // android.text.SpannableStringBuilder, java.lang.CharSequence
    @SuppressLint({"UnknownNullness"})
    public CharSequence subSequence(int i2, int i4) {
        return new SpannableBuilder(this.f5602a, this, i2, i4);
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder delete(int i2, int i4) {
        super.delete(i2, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i2, CharSequence charSequence) {
        super.insert(i2, charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i2, int i4, CharSequence charSequence) {
        a();
        super.replace(i2, i4, charSequence);
        f();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder insert(int i2, CharSequence charSequence, int i4, int i5) {
        super.insert(i2, charSequence, i4, i5);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    SpannableBuilder(@NonNull Class<?> cls, @NonNull CharSequence charSequence) {
        super(charSequence);
        this.f5603b = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.f5602a = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder replace(int i2, int i4, CharSequence charSequence, int i5, int i6) {
        a();
        super.replace(i2, i4, charSequence, i5, i6);
        f();
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence) {
        super.append(charSequence);
        return this;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(char c4) {
        super.append(c4);
        return this;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    SpannableBuilder(@NonNull Class<?> cls, @NonNull CharSequence charSequence, int i2, int i4) {
        super(charSequence, i2, i4);
        this.f5603b = new ArrayList();
        Preconditions.checkNotNull(cls, "watcherClass cannot be null");
        this.f5602a = cls;
    }

    @Override // android.text.SpannableStringBuilder, android.text.Editable, java.lang.Appendable
    @NonNull
    public SpannableStringBuilder append(@SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i2, int i4) {
        super.append(charSequence, i2, i4);
        return this;
    }

    @Override // android.text.SpannableStringBuilder
    @SuppressLint({"UnknownNullness"})
    public SpannableStringBuilder append(CharSequence charSequence, Object obj, int i2) {
        super.append(charSequence, obj, i2);
        return this;
    }
}
