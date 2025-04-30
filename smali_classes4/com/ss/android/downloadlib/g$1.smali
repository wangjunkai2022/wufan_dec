.class final Lcom/ss/android/downloadlib/g$1;
.super Ljava/lang/Object;
.source "TTDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g;->a(Landroid/content/Context;)Lcom/ss/android/downloadlib/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/g$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Lcom/ss/android/downloadlib/g;

    iget-object v1, p0, Lcom/ss/android/downloadlib/g$1;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ss/android/downloadlib/g;-><init>(Landroid/content/Context;Lcom/ss/android/downloadlib/g$1;)V

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->a(Lcom/ss/android/downloadlib/g;)Lcom/ss/android/downloadlib/g;

    return-void
.end method
