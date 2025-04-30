package kotlin.text;

import java.util.List;
import java.util.regex.Matcher;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.text.MatchResult;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Regex.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\b\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b \u0010!J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0016R\u0016\u0010\u0004\u001a\u00020\u00038\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0016\u0010\u0007\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u001c\u0010\n\u001a\u00020\t8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\n\u0010\u000b\u001a\u0004\b\f\u0010\rR\u001e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0015\u001a\u00020\u00128B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010\u001f\u001a\u00020\u000f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\""}, d2 = {"Lkotlin/text/MatcherMatchResult;", "Lkotlin/text/MatchResult;", "next", "Ljava/util/regex/Matcher;", "matcher", "Ljava/util/regex/Matcher;", "", "input", "Ljava/lang/CharSequence;", "Lkotlin/text/MatchGroupCollection;", "groups", "Lkotlin/text/MatchGroupCollection;", "getGroups", "()Lkotlin/text/MatchGroupCollection;", "", "", "groupValues_", "Ljava/util/List;", "Ljava/util/regex/MatchResult;", "getMatchResult", "()Ljava/util/regex/MatchResult;", "matchResult", "Lkotlin/ranges/IntRange;", "getRange", "()Lkotlin/ranges/IntRange;", "range", "getGroupValues", "()Ljava/util/List;", "groupValues", "getValue", "()Ljava/lang/String;", "value", "<init>", "(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes5.dex */
public final class MatcherMatchResult implements MatchResult {
    private List<String> groupValues_;
    @NotNull
    private final MatchGroupCollection groups;
    private final CharSequence input;
    private final Matcher matcher;

    public MatcherMatchResult(@NotNull Matcher matcher, @NotNull CharSequence input) {
        Intrinsics.checkNotNullParameter(matcher, "matcher");
        Intrinsics.checkNotNullParameter(input, "input");
        this.matcher = matcher;
        this.input = input;
        this.groups = new MatcherMatchResult$groups$1(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final java.util.regex.MatchResult getMatchResult() {
        return this.matcher;
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public MatchResult.Destructured getDestructured() {
        return MatchResult.DefaultImpls.getDestructured(this);
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public List<String> getGroupValues() {
        if (this.groupValues_ == null) {
            this.groupValues_ = new AbstractList<String>() { // from class: kotlin.text.MatcherMatchResult$groupValues$1
                @Override // kotlin.collections.AbstractCollection, java.util.Collection
                public final /* bridge */ boolean contains(Object obj) {
                    if (obj instanceof String) {
                        return contains((String) obj);
                    }
                    return false;
                }

                @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
                public int getSize() {
                    java.util.regex.MatchResult matchResult;
                    matchResult = MatcherMatchResult.this.getMatchResult();
                    return matchResult.groupCount() + 1;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int indexOf(Object obj) {
                    if (obj instanceof String) {
                        return indexOf((String) obj);
                    }
                    return -1;
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                public final /* bridge */ int lastIndexOf(Object obj) {
                    if (obj instanceof String) {
                        return lastIndexOf((String) obj);
                    }
                    return -1;
                }

                public /* bridge */ boolean contains(String str) {
                    return super.contains((Object) str);
                }

                @Override // kotlin.collections.AbstractList, java.util.List
                @NotNull
                public String get(int i2) {
                    java.util.regex.MatchResult matchResult;
                    matchResult = MatcherMatchResult.this.getMatchResult();
                    String group = matchResult.group(i2);
                    return group != null ? group : "";
                }

                public /* bridge */ int indexOf(String str) {
                    return super.indexOf((Object) str);
                }

                public /* bridge */ int lastIndexOf(String str) {
                    return super.lastIndexOf((Object) str);
                }
            };
        }
        List<String> list = this.groupValues_;
        Intrinsics.checkNotNull(list);
        return list;
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public MatchGroupCollection getGroups() {
        return this.groups;
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public IntRange getRange() {
        IntRange range;
        range = RegexKt.range(getMatchResult());
        return range;
    }

    @Override // kotlin.text.MatchResult
    @NotNull
    public String getValue() {
        String group = getMatchResult().group();
        Intrinsics.checkNotNullExpressionValue(group, "matchResult.group()");
        return group;
    }

    @Override // kotlin.text.MatchResult
    @Nullable
    public MatchResult next() {
        MatchResult findNext;
        int end = getMatchResult().end() + (getMatchResult().end() == getMatchResult().start() ? 1 : 0);
        if (end <= this.input.length()) {
            Matcher matcher = this.matcher.pattern().matcher(this.input);
            Intrinsics.checkNotNullExpressionValue(matcher, "matcher.pattern().matcher(input)");
            findNext = RegexKt.findNext(matcher, end, this.input);
            return findNext;
        }
        return null;
    }
}
