.class Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$c;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->a(Lcom/join/mgps/dto/GameVoucherBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$c;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1$c;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;

    iget-object p1, p1, Lcom/join/mgps/adapter/MGGameDetailAdapter$t1;->g:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->b(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/activity/HotVoucherActivity_;->V0(Landroid/content/Context;)Lcom/join/mgps/activity/HotVoucherActivity_$h;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
