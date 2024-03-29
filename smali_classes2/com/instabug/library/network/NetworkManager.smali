.class public Lcom/instabug/library/network/NetworkManager;
.super Ljava/lang/Object;
.source "NetworkManager.java"

# interfaces
.implements Ld0/l/e/v0/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;,
        Lcom/instabug/library/network/NetworkManager$RequestType;
    }
.end annotation


# static fields
.field public static final APP_TOKEN:Ljava/lang/String; = "application_token"

.field private static final DEFAULT_CONNECTION_TIME_OUT:I = 0x3a98

.field private static final DEFAULT_READ_TIME_OUT:I = 0x2710

.field public static final TAG:Ljava/lang/String; = "NetworkManager"

.field public static final UUID:Ljava/lang/String; = "uuid"


# instance fields
.field private onDoRequestListener:Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/instabug/library/network/NetworkManager;)Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/instabug/library/network/NetworkManager;->onDoRequestListener:Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->connectWithNormalType(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->connectWithFileDownloadType(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->connectWithMultiPartType(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Lcom/instabug/library/network/NetworkManager;Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->handleServerConnectionError(Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/instabug/library/network/NetworkManager;Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->handleRequestResponse(Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/instabug/library/network/NetworkManager;->handleFileDownloadRequestResponse(Lcom/instabug/library/network/Request;Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lcom/instabug/library/network/NetworkManager;Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->handleMultipartRequestResponse(Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;

    move-result-object p0

    return-object p0
.end method

.method private buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request;)Lcom/instabug/library/network/Request;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 9
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/library/settings/SettingsManager;->getAppToken()Ljava/lang/String;

    move-result-object p1

    const-string v0, "application_token"

    invoke-virtual {p2, v0, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    .line 10
    invoke-static {}, Ld0/l/e/q0/k;->A()Ljava/lang/String;

    move-result-object p1

    const-string v0, "uuid"

    invoke-virtual {p2, v0, p1}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    return-object p2
.end method

.method private connectWithFileDownloadType(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Connect to: "

    .line 1
    invoke-static {v0}, Ld0/e/a/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with fileDownload type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManager"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->connectWithNormalType(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method private connectWithMultiPartType(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Connect to: "

    .line 1
    invoke-static {v0}, Ld0/e/a/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with multiPart type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManager"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/network/NetworkManager;->buildConnection(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/network/Request$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_0
    const-string v1, "Connection"

    const-string v2, "Keep-Alive"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Cache-Control"

    const-string v2, "no-cache"

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Encoding"

    const-string v2, ""

    .line 7
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Ld0/l/e/v0/d;

    invoke-direct {v1, v0}, Ld0/l/e/v0/d;-><init>(Ljava/net/HttpURLConnection;)V

    .line 9
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestBodyParameters()Ljava/util/ArrayList;

    move-result-object v2

    .line 10
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "\""

    const-string v5, "\r\n"

    const-string v6, "--"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/instabug/library/network/Request$RequestParameter;

    .line 11
    invoke-virtual {v3}, Lcom/instabug/library/network/Request$RequestParameter;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lcom/instabug/library/network/Request$RequestParameter;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 13
    iget-object v8, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    iget-object v8, v1, Ld0/l/e/v0/d;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 14
    iget-object v6, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    const-string v8, "Content-Disposition: form-data; name=\""

    invoke-virtual {v6, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v4

    .line 15
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 16
    iget-object v4, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 17
    iget-object v4, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 18
    iget-object v3, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/io/PrintWriter;->flush()V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getFileToUpload()Lcom/instabug/library/network/Request$FileToUpload;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {p1}, Lcom/instabug/library/network/Request$FileToUpload;->getFilePartName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/instabug/library/network/Request$FileToUpload;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/instabug/library/network/Request$FileToUpload;->getFileName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/instabug/library/network/Request$FileToUpload;->getFileType()Ljava/lang/String;

    move-result-object p1

    .line 22
    iget-object v8, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {v8, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    iget-object v9, v1, Ld0/l/e/v0/d;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 23
    iget-object v8, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    const-string v9, "Content-Disposition: file; name=\""

    invoke-virtual {v8, v9}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    const-string v8, "\"; filename=\""

    .line 24
    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 25
    iget-object v2, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    const-string v4, "Content-Type: "

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 26
    iget-object p1, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 27
    iget-object p1, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 28
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/high16 v2, 0x100000

    :try_start_1
    new-array v2, v2, [B

    .line 29
    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 30
    iget-object v4, v1, Ld0/l/e/v0/d;->b:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v7, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 31
    :cond_2
    :try_start_2
    iget-object v2, v1, Ld0/l/e/v0/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 32
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 33
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 34
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_3
    :goto_2
    iget-object p1, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 36
    iget-object p1, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception p1

    move-object v0, p1

    const/4 p1, 0x0

    .line 37
    :goto_3
    :try_start_3
    iget-object v2, v1, Ld0/l/e/v0/d;->b:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    if-eqz p1, :cond_4

    .line 38
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 40
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_4
    :goto_4
    throw v0

    .line 42
    :cond_5
    :goto_5
    iget-object p1, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 43
    iget-object p1, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    iget-object v2, v1, Ld0/l/e/v0/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    .line 44
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 45
    iget-object p1, v1, Ld0/l/e/v0/d;->c:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->close()V

    return-object v0
.end method

.method private connectWithNormalType(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Connect to: "

    .line 1
    invoke-static {v0}, Ld0/e/a/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with normal type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManager"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/instabug/library/network/NetworkManager;->buildConnection(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/instabug/library/network/NetworkManager;->setURLConnectionDefaultTimeOut(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;

    .line 4
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instabug/library/network/Request$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->put:Lcom/instabug/library/network/Request$RequestMethod;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 9
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestBody()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/instabug/library/network/NetworkManager;->writeRequestBody(Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    const-string v0, "NetworkManager"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v2

    .line 9
    :goto_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 10
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_5
    move-exception v2

    .line 13
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 14
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    const-string p1, ""

    return-object p1

    :goto_5
    move-object v2, v1

    .line 17
    :goto_6
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :cond_2
    :goto_7
    throw v0
.end method

.method private copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getHeaderFields(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private handleFileDownloadRequestResponse(Lcom/instabug/library/network/Request;Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RESOURCE_LEAK"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/network/RequestResponse;

    invoke-direct {v0}, Lcom/instabug/library/network/RequestResponse;-><init>()V

    .line 2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/network/RequestResponse;->setResponseCode(I)V

    .line 4
    invoke-direct {p0, p2}, Lcom/instabug/library/network/NetworkManager;->getHeaderFields(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/library/network/RequestResponse;->setHeaders(Ljava/util/Map;)Lcom/instabug/library/network/RequestResponse;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File downloader request response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManager"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getDownloadedFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v1, v3}, Lcom/instabug/library/network/NetworkManager;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 8
    invoke-virtual {v0, p1}, Lcom/instabug/library/network/RequestResponse;->setResponseBody(Ljava/lang/Object;)V

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File downloader request response: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, Lcom/instabug/library/network/RequestResponse;->setResponseBody(Ljava/lang/Object;)V

    const-string p1, "File downloader request response is null"

    .line 11
    invoke-static {v2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :goto_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0
.end method

.method private handleMultipartRequestResponse(Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->handleRequestResponse(Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;

    move-result-object p1

    return-object p1
.end method

.method private handleRequestResponse(Ljava/net/HttpURLConnection;)Lcom/instabug/library/network/RequestResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/instabug/library/network/RequestResponse;

    invoke-direct {v0}, Lcom/instabug/library/network/RequestResponse;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Lcom/instabug/library/network/RequestResponse;->setResponseCode(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/instabug/library/network/NetworkManager;->getHeaderFields(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/instabug/library/network/RequestResponse;->setHeaders(Ljava/util/Map;)Lcom/instabug/library/network/RequestResponse;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Request response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManager"

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instabug/library/network/NetworkManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lcom/instabug/library/network/RequestResponse;->setResponseBody(Ljava/lang/Object;)V

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->addVerboseLog(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0
.end method

.method private handleServerConnectionError(Ljava/net/HttpURLConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "NetworkManager"

    .line 1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/instabug/library/network/NetworkManager;->isInstabugRequest(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Network request got error"

    .line 3
    invoke-static {v0, v2}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error getting Network request response of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {p0, v1}, Lcom/instabug/library/network/NetworkManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private isAuthorizationEnabled()Z
    .locals 2

    .line 1
    invoke-static {}, Ld0/l/e/z;->j()Ld0/l/e/z;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/a;->BE_DISABLE_SIGNING:Lcom/instabug/library/a;

    invoke-virtual {v0, v1}, Ld0/l/e/z;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ld0/l/e/z;->j()Ld0/l/e/z;

    move-result-object v0

    invoke-virtual {v0, v1}, Ld0/l/e/z;->a(Ljava/lang/Object;)Lcom/instabug/library/Feature$State;

    move-result-object v0

    sget-object v1, Lcom/instabug/library/Feature$State;->DISABLED:Lcom/instabug/library/Feature$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInstabugRequest(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "https://api.instabug.com/api/sdk/v3"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static isOnline(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "NetworkManager"

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "connectivity"

    .line 1
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v1, "Something went wrong while checking network state"

    .line 4
    invoke-static {v0, v1, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "Could not read network state. To enable please add the following line in your AndroidManifest.xml <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\"/>\n"

    .line 5
    invoke-static {v1}, Ld0/e/a/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private setURLConnectionDefaultTimeOut(Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 2

    const/16 v0, 0x2710

    const/16 v1, 0x3a98

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/instabug/library/network/NetworkManager;->setURLConnectionTimeOut(Ljava/net/HttpURLConnection;II)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method

.method private writeRequestBody(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v2, "UTF8"

    .line 3
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 4
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public buildConnection(Lcom/instabug/library/network/Request;)Ljava/net/HttpURLConnection;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/UnsatisfiedLinkError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/json"

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    .line 4
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/instabug/library/network/NetworkManager;->isAuthorizationEnabled()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/NetworkManager;->isAuthorizationRequired(Lcom/instabug/library/network/Request;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 7
    sget v1, Lcom/instabug/library/network/authorization/NetworkOfficer;->a:I

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "amx "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    .line 12
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Lcom/instabug/library/network/authorization/NetworkOfficer;->getClientId()Ljava/lang/String;

    move-result-object v6

    .line 14
    const-class v7, Lcom/instabug/library/network/authorization/NetworkOfficer;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v10

    invoke-virtual {v10}, Lcom/instabug/library/network/Request$RequestMethod;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :cond_0
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ld0/l/e/v0/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v1

    sget-object v10, Lcom/instabug/library/network/Request$RequestMethod;->Post:Lcom/instabug/library/network/Request$RequestMethod;

    if-eq v1, v10, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v1

    sget-object v10, Lcom/instabug/library/network/Request$RequestMethod;->put:Lcom/instabug/library/network/Request$RequestMethod;

    if-ne v1, v10, :cond_7

    :cond_1
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 22
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->isMultiPartRequest()Z

    move-result v1

    const/4 v10, 0x0

    if-eqz v1, :cond_2

    goto :goto_1

    .line 23
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ld0/l/e/v0/b/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v9, 0x2

    .line 25
    invoke-static {v1, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Ld0/l/e/v0/b/a;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 27
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    goto :goto_0

    :catch_0
    move-exception v1

    .line 28
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const-string v11, "get singature base string"

    invoke-static {v9, v11, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    move-object v9, v10

    :cond_5
    :goto_1
    if-eqz v9, :cond_6

    .line 29
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 30
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 31
    :cond_6
    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v7, "failed to hash body"

    invoke-static {v1, v7}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 32
    :cond_7
    :goto_2
    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_3
    if-eqz v10, :cond_8

    .line 34
    invoke-static {}, Lcom/instabug/library/network/authorization/NetworkOfficer;->getAppSecret()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1, v10}, Ld0/l/e/v0/b/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_8
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Authorization"

    .line 43
    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_9
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getHeaders()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_a
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instabug/library/network/Request$RequestParameter;

    .line 45
    invoke-virtual {v1}, Lcom/instabug/library/network/Request$RequestParameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 46
    invoke-virtual {v1}, Lcom/instabug/library/network/Request$RequestParameter;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/instabug/library/network/Request$RequestParameter;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const/4 p1, 0x1

    .line 47
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    return-object v0
.end method

.method public buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/network/NetworkManager$RequestType;->NORMAL:Lcom/instabug/library/network/NetworkManager$RequestType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;Lcom/instabug/library/network/NetworkManager$RequestType;)Lcom/instabug/library/network/Request;

    move-result-object p1

    return-object p1
.end method

.method public buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;Lcom/instabug/library/network/NetworkManager$RequestType;)Lcom/instabug/library/network/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/instabug/library/network/Request;

    invoke-direct {v0, p2, p4}, Lcom/instabug/library/network/Request;-><init>(Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/NetworkManager$RequestType;)V

    .line 3
    invoke-virtual {v0, p3}, Lcom/instabug/library/network/Request;->setRequestMethod(Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request;)Lcom/instabug/library/network/Request;

    move-result-object p1

    return-object p1
.end method

.method public buildRequest(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/instabug/library/network/NetworkManager$RequestType;->NORMAL:Lcom/instabug/library/network/NetworkManager$RequestType;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/network/Request$RequestMethod;Lcom/instabug/library/network/NetworkManager$RequestType;)Lcom/instabug/library/network/Request;

    move-result-object p1

    return-object p1
.end method

.method public buildRequest(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/network/Request$RequestMethod;Lcom/instabug/library/network/NetworkManager$RequestType;)Lcom/instabug/library/network/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/instabug/library/network/Request;

    invoke-direct {v0, p2, p4}, Lcom/instabug/library/network/Request;-><init>(Ljava/lang/String;Lcom/instabug/library/network/NetworkManager$RequestType;)V

    .line 7
    invoke-virtual {v0, p3}, Lcom/instabug/library/network/Request;->setRequestMethod(Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    .line 8
    invoke-direct {p0, p1, v0}, Lcom/instabug/library/network/NetworkManager;->buildRequest(Landroid/content/Context;Lcom/instabug/library/network/Request;)Lcom/instabug/library/network/Request;

    move-result-object p1

    return-object p1
.end method

.method public buildRequestWithoutUUID(Landroid/content/Context;Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/instabug/library/network/Request;

    sget-object v0, Lcom/instabug/library/network/NetworkManager$RequestType;->NORMAL:Lcom/instabug/library/network/NetworkManager$RequestType;

    invoke-direct {p1, p2, v0}, Lcom/instabug/library/network/Request;-><init>(Lcom/instabug/library/network/Request$Endpoint;Lcom/instabug/library/network/NetworkManager$RequestType;)V

    .line 2
    invoke-virtual {p1, p3}, Lcom/instabug/library/network/Request;->setRequestMethod(Lcom/instabug/library/network/Request$RequestMethod;)Lcom/instabug/library/network/Request;

    .line 3
    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/instabug/library/settings/SettingsManager;->getAppToken()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application_token"

    invoke-virtual {p1, p3, p2}, Lcom/instabug/library/network/Request;->addParameter(Ljava/lang/String;Ljava/lang/Object;)Lcom/instabug/library/network/Request;

    return-object p1
.end method

.method public doRequest(Lcom/instabug/library/network/Request;)Ly0/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/library/network/Request;",
            ")",
            "Ly0/b/l<",
            "Lcom/instabug/library/network/RequestResponse;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/network/NetworkManager;->onDoRequestListener:Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;->onRequestStarted(Lcom/instabug/library/network/Request;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/instabug/library/network/NetworkManager$a;

    invoke-direct {v0, p0, p1}, Lcom/instabug/library/network/NetworkManager$a;-><init>(Lcom/instabug/library/network/NetworkManager;Lcom/instabug/library/network/Request;)V

    .line 4
    new-instance p1, Lio/reactivex/internal/operators/observable/ObservableCreate;

    invoke-direct {p1, v0}, Lio/reactivex/internal/operators/observable/ObservableCreate;-><init>(Ly0/b/n;)V

    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->onAssembly(Ly0/b/l;)Ly0/b/l;

    move-result-object p1

    return-object p1
.end method

.method public isAuthorizationRequired(Lcom/instabug/library/network/Request;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/instabug/library/network/NetworkManager;->isInstabugRequest(Lcom/instabug/library/network/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/instabug/library/network/NetworkManager;->isFeatureRequest(Lcom/instabug/library/network/Request;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFeatureRequest(Lcom/instabug/library/network/Request;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestMethod()Lcom/instabug/library/network/Request$RequestMethod;

    move-result-object v0

    sget-object v2, Lcom/instabug/library/network/Request$RequestMethod;->Get:Lcom/instabug/library/network/Request$RequestMethod;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getEndpoint()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/instabug/library/network/Request$Endpoint;->APP_SETTINGS:Lcom/instabug/library/network/Request$Endpoint;

    invoke-virtual {v0}, Lcom/instabug/library/network/Request$Endpoint;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isInstabugRequest(Lcom/instabug/library/network/Request;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/instabug/library/network/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://api.instabug.com/api/sdk/v3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public setOnDoRequestListener(Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/network/NetworkManager;->onDoRequestListener:Lcom/instabug/library/network/NetworkManager$OnDoRequestListener;

    return-void
.end method

.method public setURLConnectionTimeOut(Ljava/net/HttpURLConnection;II)Ljava/net/HttpURLConnection;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2
    invoke-virtual {p1, p3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    return-object p1
.end method
