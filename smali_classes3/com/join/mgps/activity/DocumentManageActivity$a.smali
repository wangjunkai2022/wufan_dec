.class Lcom/join/mgps/activity/DocumentManageActivity$a;
.super Ljava/lang/Object;
.source "DocumentManageActivity.java"

# interfaces
.implements Lcom/join/mgps/dialog/x$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/DocumentManageActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/DocumentManageActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/DocumentManageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/DocumentManageActivity$a;->a:Lcom/join/mgps/activity/DocumentManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/dialog/x;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
