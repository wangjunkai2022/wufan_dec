.class Lcom/join/mgps/activity/posting/PostingActivity$n$b;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity$n;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:[Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/posting/PostingActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity$n;I[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$n$b;->c:Lcom/join/mgps/activity/posting/PostingActivity$n;

    iput p2, p0, Lcom/join/mgps/activity/posting/PostingActivity$n$b;->a:I

    iput-object p3, p0, Lcom/join/mgps/activity/posting/PostingActivity$n$b;->b:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$n$b;->c:Lcom/join/mgps/activity/posting/PostingActivity$n;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity$n;->b(Lcom/join/mgps/activity/posting/PostingActivity$n;)Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$n$b;->a:I

    iget-object v1, p0, Lcom/join/mgps/activity/posting/PostingActivity$n$b;->b:[Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/i0;->G0(Landroid/content/Context;I[Ljava/lang/String;)V

    return-void
.end method
