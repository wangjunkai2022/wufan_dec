.class Lcom/join/mgps/customview/g0$b;
.super Ljava/lang/Object;
.source "PopBattleArea.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/g0;-><init>(Landroid/content/Context;Lcom/join/mgps/customview/g0$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/g0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/g0$b;->a:Lcom/join/mgps/customview/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/g0$b;->a:Lcom/join/mgps/customview/g0;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
