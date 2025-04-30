.class Lcom/join/mgps/activity/SearchLabelActivity$a;
.super Ljava/lang/Object;
.source "SearchLabelActivity.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/SearchLabelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchLabelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$a;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    const-string p2, " "

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
