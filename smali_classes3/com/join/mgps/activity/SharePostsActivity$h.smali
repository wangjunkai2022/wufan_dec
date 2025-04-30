.class Lcom/join/mgps/activity/SharePostsActivity$h;
.super Ljava/lang/Object;
.source "SharePostsActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SharePostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/SharePostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/SharePostsActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$h;->c:Lcom/join/mgps/activity/SharePostsActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "[\\u4e00-\\u9fa5]"

    .line 3
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$h;->b:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/join/mgps/activity/SharePostsActivity$h;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SharePostsActivity$h;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/join/mgps/activity/SharePostsActivity$h;->a(Ljava/lang/String;)I

    move-result p3

    add-int/2addr p2, p3

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p4}, Lcom/join/mgps/activity/SharePostsActivity$h;->a(Ljava/lang/String;)I

    move-result p4

    add-int/2addr p3, p4

    add-int/2addr p2, p3

    .line 3
    iget p3, p0, Lcom/join/mgps/activity/SharePostsActivity$h;->a:I

    if-le p2, p3, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$h;->c:Lcom/join/mgps/activity/SharePostsActivity;

    const/4 p2, 0x0

    const-string p3, "\u6700\u591a\u53ef\u4ee5\u586b\u519920\u4e2a\u5b57"

    invoke-static {p1, p3, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, ""

    :cond_0
    return-object p1
.end method
