.class Lcom/papa91/arc/EmuActivity_psp$12;
.super Landroid/os/AsyncTask;
.source "EmuActivity_psp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/arc/EmuActivity_psp;->syncState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/EmuActivity_psp;


# direct methods
.method constructor <init>(Lcom/papa91/arc/EmuActivity_psp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1000(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x17

    const-string v1, "/papa91/psp/"

    const-string v2, "/"

    const-string v3, ""

    if-lt p1, v0, :cond_1

    :try_start_1
    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 8
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1000(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mounted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    sget-object p1, Lorg/ppsspp/ppsspp/NativeActivity;->romPath:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/papa91/arc/util/SDCardUtil;->getExternalStorageDirectory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1000(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    :cond_3
    :goto_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1000(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 16
    invoke-static {v1}, Lcom/papa91/arc/EmuActivity_psp;->access$1400(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {p1, v0}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 19
    invoke-static {v0}, Lcom/papa91/arc/EmuActivity_psp;->access$1400(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/papa91/arc/EmuActivity_psp$12;->this$0:Lcom/papa91/arc/EmuActivity_psp;

    .line 20
    invoke-static {v1}, Lcom/papa91/arc/EmuActivity_psp;->access$1000(Lcom/papa91/arc/EmuActivity_psp;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {p1, v0}, Lcom/papa91/arc/util/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 p1, 0x0

    return-object p1
.end method
