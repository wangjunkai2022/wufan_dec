package androidx.databinding.adapters;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.TextWatcher;
import android.text.method.DialerKeyListener;
import android.text.method.DigitsKeyListener;
import android.text.method.KeyListener;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TextKeyListener;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingAdapter;
import androidx.databinding.BindingMethod;
import androidx.databinding.BindingMethods;
import androidx.databinding.InverseBindingAdapter;
import androidx.databinding.InverseBindingListener;
import androidx.databinding.library.baseAdapters.R;
@BindingMethods({@BindingMethod(attribute = "android:autoLink", method = "setAutoLinkMask", type = TextView.class), @BindingMethod(attribute = "android:drawablePadding", method = "setCompoundDrawablePadding", type = TextView.class), @BindingMethod(attribute = "android:editorExtras", method = "setInputExtras", type = TextView.class), @BindingMethod(attribute = "android:inputType", method = "setRawInputType", type = TextView.class), @BindingMethod(attribute = "android:scrollHorizontally", method = "setHorizontallyScrolling", type = TextView.class), @BindingMethod(attribute = "android:textAllCaps", method = "setAllCaps", type = TextView.class), @BindingMethod(attribute = "android:textColorHighlight", method = "setHighlightColor", type = TextView.class), @BindingMethod(attribute = "android:textColorHint", method = "setHintTextColor", type = TextView.class), @BindingMethod(attribute = "android:textColorLink", method = "setLinkTextColor", type = TextView.class), @BindingMethod(attribute = "android:onEditorAction", method = "setOnEditorActionListener", type = TextView.class)})
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class TextViewBindingAdapter {
    public static final int DECIMAL = 5;
    public static final int INTEGER = 1;
    public static final int SIGNED = 3;

    /* renamed from: a  reason: collision with root package name */
    private static final String f5344a = "TextViewBindingAdapters";

    /* loaded from: classes.dex */
    public interface AfterTextChanged {
        void afterTextChanged(Editable editable);
    }

    /* loaded from: classes.dex */
    public interface BeforeTextChanged {
        void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5);
    }

    /* loaded from: classes.dex */
    public interface OnTextChanged {
        void onTextChanged(CharSequence charSequence, int i2, int i4, int i5);
    }

    private static boolean a(CharSequence charSequence, CharSequence charSequence2) {
        if ((charSequence == null) != (charSequence2 == null)) {
            return true;
        }
        if (charSequence == null) {
            return false;
        }
        int length = charSequence.length();
        if (length != charSequence2.length()) {
            return true;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (charSequence.charAt(i2) != charSequence2.charAt(i2)) {
                return true;
            }
        }
        return false;
    }

    private static void b(Drawable drawable) {
        if (drawable != null) {
            drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        }
    }

    @InverseBindingAdapter(attribute = "android:text", event = "android:textAttrChanged")
    public static String getTextString(TextView textView) {
        return textView.getText().toString();
    }

    @BindingAdapter({"android:autoText"})
    public static void setAutoText(TextView textView, boolean z3) {
        KeyListener keyListener = textView.getKeyListener();
        TextKeyListener.Capitalize capitalize = TextKeyListener.Capitalize.NONE;
        int inputType = keyListener != null ? keyListener.getInputType() : 0;
        if ((inputType & 4096) != 0) {
            capitalize = TextKeyListener.Capitalize.CHARACTERS;
        } else if ((inputType & 8192) != 0) {
            capitalize = TextKeyListener.Capitalize.WORDS;
        } else if ((inputType & 16384) != 0) {
            capitalize = TextKeyListener.Capitalize.SENTENCES;
        }
        textView.setKeyListener(TextKeyListener.getInstance(z3, capitalize));
    }

    @BindingAdapter({"android:bufferType"})
    public static void setBufferType(TextView textView, TextView.BufferType bufferType) {
        textView.setText(textView.getText(), bufferType);
    }

    @BindingAdapter({"android:capitalize"})
    public static void setCapitalize(TextView textView, TextKeyListener.Capitalize capitalize) {
        textView.setKeyListener(TextKeyListener.getInstance((textView.getKeyListener().getInputType() & 32768) != 0, capitalize));
    }

    @BindingAdapter({"android:digits"})
    public static void setDigits(TextView textView, CharSequence charSequence) {
        if (charSequence != null) {
            textView.setKeyListener(DigitsKeyListener.getInstance(charSequence.toString()));
        } else if (textView.getKeyListener() instanceof DigitsKeyListener) {
            textView.setKeyListener(null);
        }
    }

    @BindingAdapter({"android:drawableBottom"})
    public static void setDrawableBottom(TextView textView, Drawable drawable) {
        b(drawable);
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        textView.setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], compoundDrawables[2], drawable);
    }

    @BindingAdapter({"android:drawableEnd"})
    public static void setDrawableEnd(TextView textView, Drawable drawable) {
        if (Build.VERSION.SDK_INT < 17) {
            setDrawableRight(textView, drawable);
            return;
        }
        b(drawable);
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        textView.setCompoundDrawablesRelative(compoundDrawablesRelative[0], compoundDrawablesRelative[1], drawable, compoundDrawablesRelative[3]);
    }

    @BindingAdapter({"android:drawableLeft"})
    public static void setDrawableLeft(TextView textView, Drawable drawable) {
        b(drawable);
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        textView.setCompoundDrawables(drawable, compoundDrawables[1], compoundDrawables[2], compoundDrawables[3]);
    }

    @BindingAdapter({"android:drawableRight"})
    public static void setDrawableRight(TextView textView, Drawable drawable) {
        b(drawable);
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        textView.setCompoundDrawables(compoundDrawables[0], compoundDrawables[1], drawable, compoundDrawables[3]);
    }

    @BindingAdapter({"android:drawableStart"})
    public static void setDrawableStart(TextView textView, Drawable drawable) {
        if (Build.VERSION.SDK_INT < 17) {
            setDrawableLeft(textView, drawable);
            return;
        }
        b(drawable);
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        textView.setCompoundDrawablesRelative(drawable, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
    }

    @BindingAdapter({"android:drawableTop"})
    public static void setDrawableTop(TextView textView, Drawable drawable) {
        b(drawable);
        Drawable[] compoundDrawables = textView.getCompoundDrawables();
        textView.setCompoundDrawables(compoundDrawables[0], drawable, compoundDrawables[2], compoundDrawables[3]);
    }

    @BindingAdapter({"android:imeActionLabel"})
    public static void setImeActionLabel(TextView textView, CharSequence charSequence) {
        textView.setImeActionLabel(charSequence, textView.getImeActionId());
    }

    @BindingAdapter({"android:inputMethod"})
    public static void setInputMethod(TextView textView, CharSequence charSequence) {
        try {
            textView.setKeyListener((KeyListener) Class.forName(charSequence.toString()).newInstance());
        } catch (ClassNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("Could not create input method: ");
            sb.append((Object) charSequence);
        } catch (IllegalAccessException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Could not create input method: ");
            sb2.append((Object) charSequence);
        } catch (InstantiationException unused3) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("Could not create input method: ");
            sb3.append((Object) charSequence);
        }
    }

    @BindingAdapter({"android:lineSpacingExtra"})
    public static void setLineSpacingExtra(TextView textView, float f4) {
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setLineSpacing(f4, textView.getLineSpacingMultiplier());
        } else {
            textView.setLineSpacing(f4, 1.0f);
        }
    }

    @BindingAdapter({"android:lineSpacingMultiplier"})
    public static void setLineSpacingMultiplier(TextView textView, float f4) {
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setLineSpacing(textView.getLineSpacingExtra(), f4);
        } else {
            textView.setLineSpacing(0.0f, f4);
        }
    }

    @BindingAdapter({"android:maxLength"})
    public static void setMaxLength(TextView textView, int i2) {
        boolean z3;
        InputFilter[] filters = textView.getFilters();
        if (filters == null) {
            filters = new InputFilter[]{new InputFilter.LengthFilter(i2)};
        } else {
            int i4 = 0;
            while (true) {
                if (i4 >= filters.length) {
                    z3 = false;
                    break;
                }
                InputFilter inputFilter = filters[i4];
                if (inputFilter instanceof InputFilter.LengthFilter) {
                    if (Build.VERSION.SDK_INT < 21 || ((InputFilter.LengthFilter) inputFilter).getMax() != i2) {
                        filters[i4] = new InputFilter.LengthFilter(i2);
                    }
                    z3 = true;
                } else {
                    i4++;
                }
            }
            if (!z3) {
                int length = filters.length + 1;
                InputFilter[] inputFilterArr = new InputFilter[length];
                System.arraycopy(filters, 0, inputFilterArr, 0, filters.length);
                inputFilterArr[length - 1] = new InputFilter.LengthFilter(i2);
                filters = inputFilterArr;
            }
        }
        textView.setFilters(filters);
    }

    @BindingAdapter({"android:numeric"})
    public static void setNumeric(TextView textView, int i2) {
        textView.setKeyListener(DigitsKeyListener.getInstance((i2 & 3) != 0, (i2 & 5) != 0));
    }

    @BindingAdapter({"android:password"})
    public static void setPassword(TextView textView, boolean z3) {
        if (z3) {
            textView.setTransformationMethod(PasswordTransformationMethod.getInstance());
        } else if (textView.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textView.setTransformationMethod(null);
        }
    }

    @BindingAdapter({"android:phoneNumber"})
    public static void setPhoneNumber(TextView textView, boolean z3) {
        if (z3) {
            textView.setKeyListener(DialerKeyListener.getInstance());
        } else if (textView.getKeyListener() instanceof DialerKeyListener) {
            textView.setKeyListener(null);
        }
    }

    @BindingAdapter({"android:shadowColor"})
    public static void setShadowColor(TextView textView, int i2) {
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setShadowLayer(textView.getShadowRadius(), textView.getShadowDx(), textView.getShadowDy(), i2);
        }
    }

    @BindingAdapter({"android:shadowDx"})
    public static void setShadowDx(TextView textView, float f4) {
        if (Build.VERSION.SDK_INT >= 16) {
            int shadowColor = textView.getShadowColor();
            textView.setShadowLayer(textView.getShadowRadius(), f4, textView.getShadowDy(), shadowColor);
        }
    }

    @BindingAdapter({"android:shadowDy"})
    public static void setShadowDy(TextView textView, float f4) {
        if (Build.VERSION.SDK_INT >= 16) {
            int shadowColor = textView.getShadowColor();
            textView.setShadowLayer(textView.getShadowRadius(), textView.getShadowDx(), f4, shadowColor);
        }
    }

    @BindingAdapter({"android:shadowRadius"})
    public static void setShadowRadius(TextView textView, float f4) {
        if (Build.VERSION.SDK_INT >= 16) {
            textView.setShadowLayer(f4, textView.getShadowDx(), textView.getShadowDy(), textView.getShadowColor());
        }
    }

    @BindingAdapter({"android:text"})
    public static void setText(TextView textView, CharSequence charSequence) {
        CharSequence text = textView.getText();
        if (charSequence != text) {
            if (charSequence == null && text.length() == 0) {
                return;
            }
            if (charSequence instanceof Spanned) {
                if (charSequence.equals(text)) {
                    return;
                }
            } else if (!a(charSequence, text)) {
                return;
            }
            textView.setText(charSequence);
        }
    }

    @BindingAdapter({"android:textSize"})
    public static void setTextSize(TextView textView, float f4) {
        textView.setTextSize(0, f4);
    }

    @BindingAdapter(requireAll = false, value = {"android:beforeTextChanged", "android:onTextChanged", "android:afterTextChanged", "android:textAttrChanged"})
    public static void setTextWatcher(TextView textView, final BeforeTextChanged beforeTextChanged, final OnTextChanged onTextChanged, final AfterTextChanged afterTextChanged, final InverseBindingListener inverseBindingListener) {
        TextWatcher textWatcher = (beforeTextChanged == null && afterTextChanged == null && onTextChanged == null && inverseBindingListener == null) ? null : new TextWatcher() { // from class: androidx.databinding.adapters.TextViewBindingAdapter.1
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                AfterTextChanged afterTextChanged2 = afterTextChanged;
                if (afterTextChanged2 != null) {
                    afterTextChanged2.afterTextChanged(editable);
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
                BeforeTextChanged beforeTextChanged2 = BeforeTextChanged.this;
                if (beforeTextChanged2 != null) {
                    beforeTextChanged2.beforeTextChanged(charSequence, i2, i4, i5);
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i4, int i5) {
                OnTextChanged onTextChanged2 = onTextChanged;
                if (onTextChanged2 != null) {
                    onTextChanged2.onTextChanged(charSequence, i2, i4, i5);
                }
                InverseBindingListener inverseBindingListener2 = inverseBindingListener;
                if (inverseBindingListener2 != null) {
                    inverseBindingListener2.onChange();
                }
            }
        };
        TextWatcher textWatcher2 = (TextWatcher) ListenerUtil.trackListener(textView, textWatcher, R.id.textWatcher);
        if (textWatcher2 != null) {
            textView.removeTextChangedListener(textWatcher2);
        }
        if (textWatcher != null) {
            textView.addTextChangedListener(textWatcher);
        }
    }

    @BindingAdapter({"android:imeActionId"})
    public static void setImeActionLabel(TextView textView, int i2) {
        textView.setImeActionLabel(textView.getImeActionLabel(), i2);
    }
}
