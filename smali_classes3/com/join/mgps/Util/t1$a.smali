.class Lcom/join/mgps/Util/t1$a;
.super Ljava/lang/Object;
.source "ShortcutUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/t1;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/t1$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/join/mgps/Util/t1$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/join/android/app/common/dialog/d;

    iget-object v1, p0, Lcom/join/mgps/Util/t1$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/join/mgps/Util/t1$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/join/android/app/common/dialog/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
