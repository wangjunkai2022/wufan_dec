.class Lcom/join/android/app/common/dialog/j$a$a;
.super Ljava/lang/Object;
.source "LocalGameThreeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/dialog/j$a;->onPageScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/dialog/j$a;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/j$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$a$a;->a:Lcom/join/android/app/common/dialog/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$a$a;->a:Lcom/join/android/app/common/dialog/j$a;

    iget-object v0, v0, Lcom/join/android/app/common/dialog/j$a;->a:Lcom/join/android/app/common/dialog/j;

    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->P(Lcom/join/android/app/common/dialog/j;)V

    return-void
.end method
