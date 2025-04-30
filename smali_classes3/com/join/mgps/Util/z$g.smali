.class Lcom/join/mgps/Util/z$g;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/z;->E(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/Util/z;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/z;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/z$g;->a:Lcom/join/mgps/Util/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
