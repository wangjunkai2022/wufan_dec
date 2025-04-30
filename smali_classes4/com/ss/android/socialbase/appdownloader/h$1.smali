.class Lcom/ss/android/socialbase/appdownloader/h$1;
.super Ljava/lang/Object;
.source "InstallQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/socialbase/appdownloader/h;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/appdownloader/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/appdownloader/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/h$1;->a:Lcom/ss/android/socialbase/appdownloader/h;

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/h;->a(Lcom/ss/android/socialbase/appdownloader/h;)V

    return-void
.end method
