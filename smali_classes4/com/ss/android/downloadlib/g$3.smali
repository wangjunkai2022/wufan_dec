.class Lcom/ss/android/downloadlib/g$3;
.super Ljava/lang/Object;
.source "TTDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/g;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Z

.field final synthetic c:Lcom/ss/android/downloadlib/g;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/g;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/g$3;->c:Lcom/ss/android/downloadlib/g;

    iput-object p2, p0, Lcom/ss/android/downloadlib/g$3;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/ss/android/downloadlib/g$3;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/g$3;->c:Lcom/ss/android/downloadlib/g;

    invoke-static {v0}, Lcom/ss/android/downloadlib/g;->b(Lcom/ss/android/downloadlib/g;)Lcom/ss/android/downloadlib/f;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/g$3;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/ss/android/downloadlib/g$3;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/f;->a(Ljava/lang/String;Z)V

    return-void
.end method
