list(APPEND NETWORK_PUBLIC_INCLUDES
    QAbstract_NetworkCache
    QAccess_Manager
    QHttp_MultiPart
    QHttp_Part
    QNetwork_CacheMetaData
    QNetwork_Cookie
    QNetwork_CookieJar
    QNetwork_DiskCache
    QNetwork_Reply
    QNetwork_Request
)

list(APPEND NETWORK_INCLUDES
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qabstract_networkcache.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_manager.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_multipart.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_part.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_cachemetadata.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_cookie.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_cookiejar.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_diskcache.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_reply.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_request.h
)

list(APPEND NETWORK_PRIVATE_INCLUDES
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qabstract_networkcache_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qabstract_protocolhandler_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_authenticationmanager_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_manager_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_cache_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_backend_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_filebackend_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_cachebackend_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_ftpbackend_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qftp_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_header_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_multipart_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkheader_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkrequest_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkreply_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkconnection_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkconnectionchannel_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_protocolhandler_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_threaddelegate_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_cookie_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_cookiejar_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_request_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_reply_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_replyimpl_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_replydata_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_replyfile_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_diskcache_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_replyhttp_p.h
    ${CMAKE_CURRENT_SOURCE_DIR}/access/qspdyprotocolhandler_p.h
)

target_sources(CsNetwork
   PRIVATE
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qabstract_networkcache.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qabstract_protocolhandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_authenticationmanager.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_manager.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_cache.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_backend.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_filebackend.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_cachebackend.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qaccess_ftpbackend.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qftp.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_header.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_multipart.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkheader.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkrequest.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkreply.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkconnection.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_networkconnectionchannel.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_protocolhandler.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qhttp_threaddelegate.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_cookie.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_cookiejar.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_request.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_reply.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_replyimpl.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_replydata.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_replyfile.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_diskcache.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qnetwork_replyhttp.cpp
   ${CMAKE_CURRENT_SOURCE_DIR}/access/qspdyprotocolhandler.cpp
)
