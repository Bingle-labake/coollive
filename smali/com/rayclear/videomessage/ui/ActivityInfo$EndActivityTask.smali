.class Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;
.super Landroid/os/AsyncTask;
.source "ActivityInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rayclear/videomessage/ui/ActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EndActivityTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;


# direct methods
.method private constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 708
    iput-object p1, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/rayclear/videomessage/ui/ActivityInfo;Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 708
    invoke-direct {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;-><init>(Lcom/rayclear/videomessage/ui/ActivityInfo;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 10
    .parameter "params"

    .prologue
    const/4 v9, 0x0

    .line 712
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/rayclear/videomessage/common/AppContext;->inetAddr:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/live/%d/close.json?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-static {v8}, Lcom/rayclear/videomessage/common/AppContext;->getPartyModel(Landroid/content/Context;)Lcom/rayclear/videomessage/model/PartyModel;

    move-result-object v8

    iget v8, v8, Lcom/rayclear/videomessage/model/PartyModel;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 713
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 714
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 715
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 716
    .local v0, defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v5, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-static {v5}, Lcom/rayclear/videomessage/common/AppContext;->getCookieStore(Landroid/content/Context;)Lorg/apache/http/client/CookieStore;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 717
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.connection.timeout"

    const/16 v7, 0x4e20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 718
    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    const-string v6, "http.socket.timeout"

    const/16 v7, 0x4e20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 719
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 720
    .local v3, httpResponse:Lorg/apache/http/HttpResponse;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getStatusCode = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/rayclear/videomessage/common/SysUtil;->samlog(Ljava/lang/String;)V

    .line 721
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 725
    .end local v0           #defaultHttpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v4           #url:Ljava/lang/String;
    :goto_0
    return-object v5

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 725
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3
    .parameter "result"

    .prologue
    const/4 v2, 0x0

    .line 729
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 730
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    #getter for: Lcom/rayclear/videomessage/ui/ActivityInfo;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->access$1(Lcom/rayclear/videomessage/ui/ActivityInfo;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 731
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 733
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    const-string v1, "\u5df2\u7ed3\u675f\u6d3b\u52a8"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 734
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    invoke-virtual {v0}, Lcom/rayclear/videomessage/ui/ActivityInfo;->finish()V

    .line 739
    :goto_0
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->this$0:Lcom/rayclear/videomessage/ui/ActivityInfo;

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rayclear/videomessage/ui/ActivityInfo$EndActivityTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
