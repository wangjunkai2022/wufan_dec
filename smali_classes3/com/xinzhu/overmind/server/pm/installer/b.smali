.class public Lcom/xinzhu/overmind/server/pm/installer/b;
.super Ljava/lang/Object;
.source "CreatePackageExecutor.java"

# interfaces
.implements Lcom/xinzhu/overmind/server/pm/installer/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ps",
            "option",
            "userId"
        }
    .end annotation

    .line 1
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {p2}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/xinzhu/overmind/utils/j;->j(Ljava/io/File;)V

    .line 2
    iget-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {p2}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    .line 3
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->a:Lcom/xinzhu/overmind/server/pm/MindPackage;

    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/xinzhu/overmind/a;->f(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/xinzhu/overmind/utils/j;->p(Ljava/io/File;)Z

    const/4 p1, 0x0

    return p1
.end method
