.class public final Lcom/join/kotlin/bindingadapter/TextViewKt;
.super Ljava/lang/Object;
.source "TextView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u001a(\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0002H\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Landroid/widget/TextView;",
        "textView",
        "",
        "tagName",
        "tagName2",
        "message",
        "",
        "setTagText",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method public static final setTagText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        requireAll = false
        value = {
            "tagName",
            "tagName2",
            "message"
        }
    .end annotation

    const-string v0, "textView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagName2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "#ffffff"

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 5
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    const-string p1, "#FF372F"

    .line 6
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 8
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-nez v3, :cond_3

    .line 10
    new-instance p1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    invoke-direct {p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 11
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    const-string p2, "#0570FF"

    .line 12
    invoke-virtual {p1, p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 14
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/i0;->e(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 16
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p3, ""

    :cond_4
    invoke-virtual {v0, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
