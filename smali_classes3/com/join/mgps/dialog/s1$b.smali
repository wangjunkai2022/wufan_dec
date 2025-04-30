.class Lcom/join/mgps/dialog/s1$b;
.super Ljava/lang/Object;
.source "PrePostingHintDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/s1;->d(Landroid/app/Activity;I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dialog/s1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/s1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/s1$b;->b:Lcom/join/mgps/dialog/s1;

    iput p2, p0, Lcom/join/mgps/dialog/s1$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/s1$b;->b:Lcom/join/mgps/dialog/s1;

    invoke-static {p1}, Lcom/join/mgps/dialog/s1;->a(Lcom/join/mgps/dialog/s1;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/dialog/s1$b;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity$m;->e(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/s1$b;->b:Lcom/join/mgps/dialog/s1;

    invoke-virtual {p1}, Lcom/join/mgps/dialog/s1;->c()V

    return-void
.end method
