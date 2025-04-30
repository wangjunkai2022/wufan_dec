.class Lcom/join/mgps/fragment/l2$f$a$a;
.super Ljava/lang/Object;
.source "GameFromBuildFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/l2$f$a;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Lcom/join/mgps/fragment/l2$f$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/l2$f$a;Landroid/app/Dialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/l2$f$a$a;->b:Lcom/join/mgps/fragment/l2$f$a;

    iput-object p2, p0, Lcom/join/mgps/fragment/l2$f$a$a;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/l2$f$a$a;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
