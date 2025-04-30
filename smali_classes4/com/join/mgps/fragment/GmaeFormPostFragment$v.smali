.class Lcom/join/mgps/fragment/GmaeFormPostFragment$v;
.super Ljava/lang/Object;
.source "GmaeFormPostFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/GmaeFormPostFragment;->e1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/fragment/GmaeFormPostFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/GmaeFormPostFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$v;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iput-object p2, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$v;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object p1, p1, Lcom/join/mgps/fragment/GmaeFormPostFragment;->C:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$v;->b:Lcom/join/mgps/fragment/GmaeFormPostFragment;

    iget-object v0, p0, Lcom/join/mgps/fragment/GmaeFormPostFragment$v;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/fragment/GmaeFormPostFragment;->Z(ILjava/lang/String;)V

    return-void
.end method
