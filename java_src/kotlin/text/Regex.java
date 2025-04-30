package kotlin.text;

import external.org.apache.commons.lang3.d;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Regex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0011\u0018\u0000 /2\u00060\u0001j\u0002`\u0002:\u0002/0B\u0011\b\u0001\u0012\u0006\u0010\u001d\u001a\u00020\u001b¢\u0006\u0004\b)\u0010*B\u0011\b\u0016\u0012\u0006\u0010(\u001a\u00020\u0011¢\u0006\u0004\b)\u0010+B\u0019\b\u0016\u0012\u0006\u0010(\u001a\u00020\u0011\u0012\u0006\u0010,\u001a\u00020 ¢\u0006\u0004\b)\u0010-B\u001f\b\u0016\u0012\u0006\u0010(\u001a\u00020\u0011\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00020 0\u001f¢\u0006\u0004\b)\u0010.J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0011\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\u0004J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u001a\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000e2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0006\u001a\u00020\u0005J\u0016\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011J\"\u0010\u0013\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00050\u0014J\u0016\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0011J\u001e\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00110\u00182\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0017\u001a\u00020\nJ\b\u0010\u001a\u001a\u00020\u0011H\u0016J\u0006\u0010\u001c\u001a\u00020\u001bR\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001e\u0010!\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\u0019\u0010%\u001a\b\u0012\u0004\u0012\u00020 0\u001f8F@\u0006¢\u0006\u0006\u001a\u0004\b#\u0010$R\u0013\u0010(\u001a\u00020\u00118F@\u0006¢\u0006\u0006\u001a\u0004\b&\u0010'¨\u00061"}, d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "input", "", "matches", "containsMatchIn", "", "startIndex", "Lkotlin/text/MatchResult;", "find", "Lkotlin/sequences/Sequence;", "findAll", "matchEntire", "", "replacement", "replace", "Lkotlin/Function1;", "transform", "replaceFirst", "limit", "", "split", "toString", "Ljava/util/regex/Pattern;", "toPattern", "nativePattern", "Ljava/util/regex/Pattern;", "", "Lkotlin/text/RegexOption;", "_options", "Ljava/util/Set;", "getOptions", "()Ljava/util/Set;", "options", "getPattern", "()Ljava/lang/String;", "pattern", "<init>", "(Ljava/util/regex/Pattern;)V", "(Ljava/lang/String;)V", "option", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "(Ljava/lang/String;Ljava/util/Set;)V", "Companion", "Serialized", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class Regex implements Serializable {
    @NotNull
    public static final Companion Companion = new Companion(null);
    private Set<? extends RegexOption> _options;
    private final Pattern nativePattern;

    /* compiled from: Regex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\r"}, d2 = {"Lkotlin/text/Regex$Companion;", "", "", "flags", "ensureUnicodeCase", "", "literal", "Lkotlin/text/Regex;", "fromLiteral", "escape", "escapeReplacement", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int ensureUnicodeCase(int i2) {
            return (i2 & 2) != 0 ? i2 | 64 : i2;
        }

        @NotNull
        public final String escape(@NotNull String literal) {
            Intrinsics.checkNotNullParameter(literal, "literal");
            String quote = Pattern.quote(literal);
            Intrinsics.checkNotNullExpressionValue(quote, "Pattern.quote(literal)");
            return quote;
        }

        @NotNull
        public final String escapeReplacement(@NotNull String literal) {
            Intrinsics.checkNotNullParameter(literal, "literal");
            String quoteReplacement = Matcher.quoteReplacement(literal);
            Intrinsics.checkNotNullExpressionValue(quoteReplacement, "Matcher.quoteReplacement(literal)");
            return quoteReplacement;
        }

        @NotNull
        public final Regex fromLiteral(@NotNull String literal) {
            Intrinsics.checkNotNullParameter(literal, "literal");
            return new Regex(literal, RegexOption.LITERAL);
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* compiled from: Regex.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\b\b\u0002\u0018\u0000 \u00112\u00060\u0001j\u0002`\u0002:\u0001\u0011B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0002R\u0019\u0010\u0006\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0019\u0010\u000b\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"Lkotlin/text/Regex$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "readResolve", "", "pattern", "Ljava/lang/String;", "getPattern", "()Ljava/lang/String;", "", "flags", "I", "getFlags", "()I", "<init>", "(Ljava/lang/String;I)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* loaded from: classes5.dex */
    private static final class Serialized implements Serializable {
        @NotNull
        public static final Companion Companion = new Companion(null);
        private static final long serialVersionUID = 0;
        private final int flags;
        @NotNull
        private final String pattern;

        /* compiled from: Regex.kt */
        @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"Lkotlin/text/Regex$Serialized$Companion;", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        /* loaded from: classes5.dex */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }
        }

        public Serialized(@NotNull String pattern, int i2) {
            Intrinsics.checkNotNullParameter(pattern, "pattern");
            this.pattern = pattern;
            this.flags = i2;
        }

        private final Object readResolve() {
            Pattern compile = Pattern.compile(this.pattern, this.flags);
            Intrinsics.checkNotNullExpressionValue(compile, "Pattern.compile(pattern, flags)");
            return new Regex(compile);
        }

        public final int getFlags() {
            return this.flags;
        }

        @NotNull
        public final String getPattern() {
            return this.pattern;
        }
    }

    @PublishedApi
    public Regex(@NotNull Pattern nativePattern) {
        Intrinsics.checkNotNullParameter(nativePattern, "nativePattern");
        this.nativePattern = nativePattern;
    }

    public static /* synthetic */ MatchResult find$default(Regex regex, CharSequence charSequence, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return regex.find(charSequence, i2);
    }

    public static /* synthetic */ Sequence findAll$default(Regex regex, CharSequence charSequence, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return regex.findAll(charSequence, i2);
    }

    public static /* synthetic */ List split$default(Regex regex, CharSequence charSequence, int i2, int i4, Object obj) {
        if ((i4 & 2) != 0) {
            i2 = 0;
        }
        return regex.split(charSequence, i2);
    }

    private final Object writeReplace() {
        String pattern = this.nativePattern.pattern();
        Intrinsics.checkNotNullExpressionValue(pattern, "nativePattern.pattern()");
        return new Serialized(pattern, this.nativePattern.flags());
    }

    public final boolean containsMatchIn(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return this.nativePattern.matcher(input).find();
    }

    @Nullable
    public final MatchResult find(@NotNull CharSequence input, int i2) {
        Intrinsics.checkNotNullParameter(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        Intrinsics.checkNotNullExpressionValue(matcher, "nativePattern.matcher(input)");
        return RegexKt.access$findNext(matcher, i2, input);
    }

    @NotNull
    public final Sequence<MatchResult> findAll(@NotNull final CharSequence input, final int i2) {
        Sequence<MatchResult> generateSequence;
        Intrinsics.checkNotNullParameter(input, "input");
        if (i2 >= 0 && i2 <= input.length()) {
            generateSequence = SequencesKt__SequencesKt.generateSequence((Function0) new Function0<MatchResult>() { // from class: kotlin.text.Regex$findAll$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                @Nullable
                public final MatchResult invoke() {
                    return Regex.this.find(input, i2);
                }
            }, (Function1) Regex$findAll$2.INSTANCE);
            return generateSequence;
        }
        throw new IndexOutOfBoundsException("Start index out of bounds: " + i2 + ", input length: " + input.length());
    }

    @NotNull
    public final Set<RegexOption> getOptions() {
        Set set = this._options;
        if (set != null) {
            return set;
        }
        final int flags = this.nativePattern.flags();
        EnumSet allOf = EnumSet.allOf(RegexOption.class);
        CollectionsKt.retainAll(allOf, new Function1<T, Boolean>() { // from class: kotlin.text.Regex$fromInt$$inlined$apply$lambda$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Boolean invoke(Object obj) {
                return Boolean.valueOf(invoke((Enum) obj));
            }

            /* JADX WARN: Incorrect types in method signature: (TT;)Z */
            public final boolean invoke(Enum r3) {
                FlagEnum flagEnum = (FlagEnum) r3;
                return (flags & flagEnum.getMask()) == flagEnum.getValue();
            }
        });
        Set<RegexOption> unmodifiableSet = Collections.unmodifiableSet(allOf);
        Intrinsics.checkNotNullExpressionValue(unmodifiableSet, "Collections.unmodifiable…mask == it.value }\n    })");
        this._options = unmodifiableSet;
        return unmodifiableSet;
    }

    @NotNull
    public final String getPattern() {
        String pattern = this.nativePattern.pattern();
        Intrinsics.checkNotNullExpressionValue(pattern, "nativePattern.pattern()");
        return pattern;
    }

    @Nullable
    public final MatchResult matchEntire(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        Intrinsics.checkNotNullExpressionValue(matcher, "nativePattern.matcher(input)");
        return RegexKt.access$matchEntire(matcher, input);
    }

    public final boolean matches(@NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(input, "input");
        return this.nativePattern.matcher(input).matches();
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        String replaceAll = this.nativePattern.matcher(input).replaceAll(replacement);
        Intrinsics.checkNotNullExpressionValue(replaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return replaceAll;
    }

    @NotNull
    public final String replaceFirst(@NotNull CharSequence input, @NotNull String replacement) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(replacement, "replacement");
        String replaceFirst = this.nativePattern.matcher(input).replaceFirst(replacement);
        Intrinsics.checkNotNullExpressionValue(replaceFirst, "nativePattern.matcher(in…replaceFirst(replacement)");
        return replaceFirst;
    }

    @NotNull
    public final List<String> split(@NotNull CharSequence input, int i2) {
        Intrinsics.checkNotNullParameter(input, "input");
        int i4 = 0;
        if (i2 >= 0) {
            Matcher matcher = this.nativePattern.matcher(input);
            if (matcher.find() && i2 != 1) {
                ArrayList arrayList = new ArrayList(i2 > 0 ? RangesKt.coerceAtMost(i2, 10) : 10);
                int i5 = i2 - 1;
                do {
                    arrayList.add(input.subSequence(i4, matcher.start()).toString());
                    i4 = matcher.end();
                    if (i5 >= 0 && arrayList.size() == i5) {
                        break;
                    }
                } while (matcher.find());
                arrayList.add(input.subSequence(i4, input.length()).toString());
                return arrayList;
            }
            return CollectionsKt.listOf(input.toString());
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i2 + d.f65364a).toString());
    }

    @NotNull
    public final Pattern toPattern() {
        return this.nativePattern;
    }

    @NotNull
    public String toString() {
        String pattern = this.nativePattern.toString();
        Intrinsics.checkNotNullExpressionValue(pattern, "nativePattern.toString()");
        return pattern;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(@org.jetbrains.annotations.NotNull java.lang.String r2) {
        /*
            r1 = this;
            java.lang.String r0 = "pattern"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2)
            java.lang.String r0 = "Pattern.compile(pattern)"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r0)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String):void");
    }

    @NotNull
    public final String replace(@NotNull CharSequence input, @NotNull Function1<? super MatchResult, ? extends CharSequence> transform) {
        Intrinsics.checkNotNullParameter(input, "input");
        Intrinsics.checkNotNullParameter(transform, "transform");
        int i2 = 0;
        MatchResult find$default = find$default(this, input, 0, 2, null);
        if (find$default != null) {
            int length = input.length();
            StringBuilder sb = new StringBuilder(length);
            do {
                Intrinsics.checkNotNull(find$default);
                sb.append(input, i2, find$default.getRange().getStart().intValue());
                sb.append(transform.invoke(find$default));
                i2 = find$default.getRange().getEndInclusive().intValue() + 1;
                find$default = find$default.next();
                if (i2 >= length) {
                    break;
                }
            } while (find$default != null);
            if (i2 < length) {
                sb.append(input, i2, length);
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
            return sb2;
        }
        return input.toString();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(@org.jetbrains.annotations.NotNull java.lang.String r2, @org.jetbrains.annotations.NotNull kotlin.text.RegexOption r3) {
        /*
            r1 = this;
            java.lang.String r0 = "pattern"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "option"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            kotlin.text.Regex$Companion r0 = kotlin.text.Regex.Companion
            int r3 = r3.getValue()
            int r3 = kotlin.text.Regex.Companion.access$ensureUnicodeCase(r0, r3)
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2, r3)
            java.lang.String r3 = "Pattern.compile(pattern,…nicodeCase(option.value))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String, kotlin.text.RegexOption):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Regex(@org.jetbrains.annotations.NotNull java.lang.String r2, @org.jetbrains.annotations.NotNull java.util.Set<? extends kotlin.text.RegexOption> r3) {
        /*
            r1 = this;
            java.lang.String r0 = "pattern"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r2, r0)
            java.lang.String r0 = "options"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r3, r0)
            kotlin.text.Regex$Companion r0 = kotlin.text.Regex.Companion
            int r3 = kotlin.text.RegexKt.access$toInt(r3)
            int r3 = kotlin.text.Regex.Companion.access$ensureUnicodeCase(r0, r3)
            java.util.regex.Pattern r2 = java.util.regex.Pattern.compile(r2, r3)
            java.lang.String r3 = "Pattern.compile(pattern,…odeCase(options.toInt()))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r2, r3)
            r1.<init>(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.text.Regex.<init>(java.lang.String, java.util.Set):void");
    }
}
