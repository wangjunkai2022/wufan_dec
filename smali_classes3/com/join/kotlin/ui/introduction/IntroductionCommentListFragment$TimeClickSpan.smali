.class Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;
.super Lm1/a;
.source "IntroductionCommentListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeClickSpan"
.end annotation


# instance fields
.field clickStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;


# direct methods
.method public constructor <init>(Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    invoke-direct {p0}, Lm1/a;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->clickStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->clickStr:Ljava/lang/String;

    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 2
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->clickStr:Ljava/lang/String;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    .line 4
    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    aget-object v1, p1, v2

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Ll1/e;

    if-eqz v1, :cond_6

    .line 9
    invoke-interface {v1, p1}, Ll1/e;->u0(Landroidx/fragment/app/Fragment;)V

    .line 10
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Ll1/e;

    add-int/2addr v0, v3

    invoke-interface {p1, v0}, Ll1/e;->y0(I)V

    goto :goto_3

    .line 11
    :cond_2
    array-length v0, p1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    .line 12
    aget-object v0, p1, v3

    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    aget-object v0, p1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0xe10

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 14
    :goto_1
    aget-object v4, p1, v2

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 15
    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 16
    :goto_2
    aget-object v4, p1, v1

    invoke-static {v4}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object v1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Ll1/e;

    if-eqz v1, :cond_6

    .line 19
    invoke-interface {v1, p1}, Ll1/e;->u0(Landroidx/fragment/app/Fragment;)V

    .line 20
    iget-object p1, p0, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment$TimeClickSpan;->this$0:Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;

    iget-object p1, p1, Lcom/join/kotlin/ui/introduction/IntroductionCommentListFragment;->mFragmentCallback:Ll1/e;

    add-int/2addr v0, v2

    add-int/2addr v0, v3

    invoke-interface {p1, v0}, Ll1/e;->y0(I)V

    :cond_6
    :goto_3
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "#00000000"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/text/TextPaint;->clearShadowLayer()V

    return-void
.end method
