# Source: amqp0-9-1.extended.xml
# This file is automatically generated.
# Do not edit this file by hand.
# Make changes to gen.jl or the source specification instead.

using Compat

immutable ClassSpec
    index::Int
    name::Symbol 
    method_map::Dict{Int,Symbol}
end

const AMQP_VERSION = v"0.9.1"
const AMQP_DEFAULT_PORT = 5672

# Constants
const FrameMethod = 1
const FrameHeader = 2
const FrameBody = 3
const FrameHeartbeat = 8
const FrameMinSize = 4096
const ReplySuccess = 200

# Error Codes
const SoftErrorContentTooLarge = 311
const SoftErrorNoConsumers = 313
const HardErrorConnectionForced = 320
const HardErrorInvalidPath = 402
const SoftErrorAccessRefused = 403
const SoftErrorNotFound = 404
const SoftErrorResourceLocked = 405
const SoftErrorPreconditionFailed = 406
const HardErrorFrameError = 501
const HardErrorSyntaxError = 502
const HardErrorCommandInvalid = 503
const HardErrorChannelError = 504
const HardErrorUnexpectedFrame = 505
const HardErrorResourceError = 506
const HardErrorNotAllowed = 530
const HardErrorNotImplemented = 540
const HardErrorInternalError = 541

# Classes
const CLASS_MAP = Dict{Int,ClassSpec}(
            10 => ClassSpec(10, :Connection, Dict{Int, Symbol}(
                10 => :Start
                , 11 => :StartOk
                , 20 => :Secure
                , 21 => :SecureOk
                , 30 => :Tune
                , 31 => :TuneOk
                , 40 => :Open
                , 41 => :OpenOk
                , 50 => :Close
                , 51 => :CloseOk
                , 60 => :Blocked
                , 61 => :Unblocked
            )) # class Connection
            , 20 => ClassSpec(20, :Channel, Dict{Int, Symbol}(
                10 => :Open
                , 11 => :OpenOk
                , 20 => :Flow
                , 21 => :FlowOk
                , 40 => :Close
                , 41 => :CloseOk
            )) # class Channel
            , 40 => ClassSpec(40, :Exchange, Dict{Int, Symbol}(
                10 => :Declare
                , 11 => :DeclareOk
                , 20 => :Delete
                , 21 => :DeleteOk
                , 30 => :Bind
                , 31 => :BindOk
                , 40 => :Unbind
                , 51 => :UnbindOk
            )) # class Exchange
            , 50 => ClassSpec(50, :Queue, Dict{Int, Symbol}(
                10 => :Declare
                , 11 => :DeclareOk
                , 20 => :Bind
                , 21 => :BindOk
                , 50 => :Unbind
                , 51 => :UnbindOk
                , 30 => :Purge
                , 31 => :PurgeOk
                , 40 => :Delete
                , 41 => :DeleteOk
            )) # class Queue
            , 60 => ClassSpec(60, :Basic, Dict{Int, Symbol}(
                10 => :Qos
                , 11 => :QosOk
                , 20 => :Consume
                , 21 => :ConsumeOk
                , 30 => :Cancel
                , 31 => :CancelOk
                , 40 => :Publish
                , 50 => :Return
                , 60 => :Deliver
                , 70 => :Get
                , 71 => :GetOk
                , 72 => :GetEmpty
                , 80 => :Ack
                , 90 => :Reject
                , 100 => :RecoverAsync
                , 110 => :Recover
                , 111 => :RecoverOk
                , 120 => :Nack
            )) # class Basic
            , 90 => ClassSpec(90, :Tx, Dict{Int, Symbol}(
                10 => :Select
                , 11 => :SelectOk
                , 20 => :Commit
                , 21 => :CommitOk
                , 30 => :Rollback
                , 31 => :RollbackOk
            )) # class Tx
            , 85 => ClassSpec(85, :Confirm, Dict{Int, Symbol}(
                10 => :Select
                , 11 => :SelectOk
            )) # class Confirm
) # CLASS_MAP")

const CLASSNAME_MAP = Dict{Symbol,ClassSpec}(v.name => v for v in values(CLASS_MAP))
# end Classes

# Domains
typealias TAMQPConsumerTag TAMQPShortStr
typealias TAMQPDeliveryTag Int64
typealias TAMQPExchangeName TAMQPShortStr
typealias TAMQPNoAck UInt8
typealias TAMQPNoLocal UInt8
typealias TAMQPNoWait UInt8
typealias TAMQPPath TAMQPShortStr
typealias TAMQPPeerProperties TAMQPFieldTable
typealias TAMQPQueueName TAMQPShortStr
typealias TAMQPRedelivered UInt8
typealias TAMQPMessageCount Int32
typealias TAMQPReplyCode Int16
typealias TAMQPReplyText TAMQPShortStr
# end Domains

# end generated code
