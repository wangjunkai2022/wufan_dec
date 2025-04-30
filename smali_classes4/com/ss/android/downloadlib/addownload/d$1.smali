.class Lcom/ss/android/downloadlib/addownload/d$1;
.super Ljava/lang/Object;
.source "CleanSpaceHelper.java"

# interfaces
.implements Lcom/ss/android/downloadlib/addownload/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/d;->a(IJJLcom/ss/android/downloadlib/addownload/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/ss/android/downloadad/api/a/b;

.field final synthetic d:J

.field final synthetic e:Lcom/ss/android/downloadlib/addownload/e$a;

.field final synthetic f:Lcom/ss/android/downloadlib/addownload/d;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/d;ILjava/lang/String;Lcom/ss/android/downloadad/api/a/b;JLcom/ss/android/downloadlib/addownload/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/d$1;->f:Lcom/ss/android/downloadlib/addownload/d;

    iput p2, p0, Lcom/ss/android/downloadlib/addownload/d$1;->a:I

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/d$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/d$1;->c:Lcom/ss/android/downloadad/api/a/b;

    iput-wide p5, p0, Lcom/ss/android/downloadlib/addownload/d$1;->d:J

    iput-object p7, p0, Lcom/ss/android/downloadlib/addownload/d$1;->e:Lcom/ss/android/downloadlib/addownload/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/d$1;->f:Lcom/ss/android/downloadlib/addownload/d;

    iget v1, p0, Lcom/ss/android/downloadlib/addownload/d$1;->a:I

    iget-object v2, p0, Lcom/ss/android/downloadlib/addownload/d$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/ss/android/downloadlib/addownload/d$1;->c:Lcom/ss/android/downloadad/api/a/b;

    iget-wide v6, p0, Lcom/ss/android/downloadlib/addownload/d$1;->d:J

    iget-object v8, p0, Lcom/ss/android/downloadlib/addownload/d$1;->e:Lcom/ss/android/downloadlib/addownload/e$a;

    move-wide v3, p1

    invoke-static/range {v0 .. v8}, Lcom/ss/android/downloadlib/addownload/d;->a(Lcom/ss/android/downloadlib/addownload/d;ILjava/lang/String;JLcom/ss/android/downloadad/api/a/b;JLcom/ss/android/downloadlib/addownload/e$a;)V

    return-void
.end method
