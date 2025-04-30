.class Lcom/join/mgps/customview/input/a$c;
.super Ljava/lang/Object;
.source "InputNumDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/input/a;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/input/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/input/a$c;->a:Lcom/join/mgps/customview/input/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/input/a$c;->a:Lcom/join/mgps/customview/input/a;

    invoke-static {p1}, Lcom/join/mgps/customview/input/a;->b(Lcom/join/mgps/customview/input/a;)Lcom/join/mgps/customview/input/InputNumView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/join/mgps/customview/input/InputNumView;->d()V

    return-void
.end method
