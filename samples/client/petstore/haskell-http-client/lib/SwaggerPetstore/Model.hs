{-
   Swagger Petstore

   This is a sample server Petstore server.  You can find out more about Swagger at [http://swagger.io](http://swagger.io) or on [irc.freenode.net, #swagger](http://swagger.io/irc/).  For this sample, you can use the api key `special-key` to test the authorization filters.

   OpenAPI spec version: 2.0
   Swagger Petstore API version: 1.0.0
   Contact: apiteam@swagger.io
   Generated by Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
-}

{-|
Module : SwaggerPetstore.Model
-}

{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveFoldable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-matches -fno-warn-unused-binds -fno-warn-unused-imports #-}

module SwaggerPetstore.Model where

import Data.Aeson ((.:),(.:!),(.:?),(.=))

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.ByteString.Base64.Lazy as BL64
import qualified Data.Data as P (Data, Typeable)
import qualified Data.HashMap.Lazy as HM
import qualified Data.Map as Map
import qualified Data.Set as Set
import qualified Data.Maybe as P
import qualified Data.Foldable as P
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH
import qualified Control.DeepSeq as NF
import qualified Data.Ix as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Control.Arrow as P (left)
import Data.Text (Text)

import qualified Data.Time as TI
import qualified Data.Time.ISO8601 as TI

import Control.Applicative ((<|>))
import Control.Applicative (Alternative)
import Prelude (($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P



-- * Models


-- ** ApiResponse
-- | ApiResponse
-- An uploaded response
-- 
-- Describes the result of uploading an image resource
data ApiResponse = ApiResponse
  { apiResponseCode :: !(Maybe Int) -- ^ "code"
  , apiResponseType :: !(Maybe Text) -- ^ "type"
  , apiResponseMessage :: !(Maybe Text) -- ^ "message"
  } deriving (P.Show,P.Eq,P.Typeable)


-- | FromJSON ApiResponse
instance A.FromJSON ApiResponse where
  parseJSON = A.withObject "ApiResponse" $ \o ->
    ApiResponse
      <$> (o .:? "code")
      <*> (o .:? "type")
      <*> (o .:? "message")

-- | ToJSON ApiResponse
instance A.ToJSON ApiResponse where
  toJSON ApiResponse {..} =
   _omitNulls
      [ "code" .= apiResponseCode
      , "type" .= apiResponseType
      , "message" .= apiResponseMessage
      ]


-- | Construct a value of type 'ApiResponse' (by applying it's required fields, if any)
mkApiResponse
  :: ApiResponse
mkApiResponse =
  ApiResponse
  { apiResponseCode = Nothing
  , apiResponseType = Nothing
  , apiResponseMessage = Nothing
  }
  

-- ** Category
-- | Category
-- Pet catehgry
-- 
-- A category for a pet
data Category = Category
  { categoryId :: !(Maybe Integer) -- ^ "id"
  , categoryName :: !(Maybe Text) -- ^ "name"
  } deriving (P.Show,P.Eq,P.Typeable)


-- | FromJSON Category
instance A.FromJSON Category where
  parseJSON = A.withObject "Category" $ \o ->
    Category
      <$> (o .:? "id")
      <*> (o .:? "name")

-- | ToJSON Category
instance A.ToJSON Category where
  toJSON Category {..} =
   _omitNulls
      [ "id" .= categoryId
      , "name" .= categoryName
      ]


-- | Construct a value of type 'Category' (by applying it's required fields, if any)
mkCategory
  :: Category
mkCategory =
  Category
  { categoryId = Nothing
  , categoryName = Nothing
  }
  

-- ** Order
-- | Order
-- Pet Order
-- 
-- An order for a pets from the pet store
data Order = Order
  { orderId :: !(Maybe Integer) -- ^ "id"
  , orderPetId :: !(Maybe Integer) -- ^ "petId"
  , orderQuantity :: !(Maybe Int) -- ^ "quantity"
  , orderShipDate :: !(Maybe DateTime) -- ^ "shipDate"
  , orderStatus :: !(Maybe Text) -- ^ "status" - Order Status
  , orderComplete :: !(Maybe Bool) -- ^ "complete"
  } deriving (P.Show,P.Eq,P.Typeable)


-- | FromJSON Order
instance A.FromJSON Order where
  parseJSON = A.withObject "Order" $ \o ->
    Order
      <$> (o .:? "id")
      <*> (o .:? "petId")
      <*> (o .:? "quantity")
      <*> (o .:? "shipDate")
      <*> (o .:? "status")
      <*> (o .:? "complete")

-- | ToJSON Order
instance A.ToJSON Order where
  toJSON Order {..} =
   _omitNulls
      [ "id" .= orderId
      , "petId" .= orderPetId
      , "quantity" .= orderQuantity
      , "shipDate" .= orderShipDate
      , "status" .= orderStatus
      , "complete" .= orderComplete
      ]


-- | Construct a value of type 'Order' (by applying it's required fields, if any)
mkOrder
  :: Order
mkOrder =
  Order
  { orderId = Nothing
  , orderPetId = Nothing
  , orderQuantity = Nothing
  , orderShipDate = Nothing
  , orderStatus = Nothing
  , orderComplete = Nothing
  }
  

-- ** Pet
-- | Pet
-- a Pet
-- 
-- A pet for sale in the pet store
data Pet = Pet
  { petId :: !(Maybe Integer) -- ^ "id"
  , petCategory :: !(Maybe Category) -- ^ "category"
  , petName :: !(Text) -- ^ /Required/ "name"
  , petPhotoUrls :: !([Text]) -- ^ /Required/ "photoUrls"
  , petTags :: !(Maybe [Tag]) -- ^ "tags"
  , petStatus :: !(Maybe Text) -- ^ "status" - pet status in the store
  } deriving (P.Show,P.Eq,P.Typeable)


-- | FromJSON Pet
instance A.FromJSON Pet where
  parseJSON = A.withObject "Pet" $ \o ->
    Pet
      <$> (o .:? "id")
      <*> (o .:? "category")
      <*> (o .:  "name")
      <*> (o .:  "photoUrls")
      <*> (o .:? "tags")
      <*> (o .:? "status")

-- | ToJSON Pet
instance A.ToJSON Pet where
  toJSON Pet {..} =
   _omitNulls
      [ "id" .= petId
      , "category" .= petCategory
      , "name" .= petName
      , "photoUrls" .= petPhotoUrls
      , "tags" .= petTags
      , "status" .= petStatus
      ]


-- | Construct a value of type 'Pet' (by applying it's required fields, if any)
mkPet
  :: Text -- ^ 'petName' 
  -> [Text] -- ^ 'petPhotoUrls' 
  -> Pet
mkPet petName petPhotoUrls =
  Pet
  { petId = Nothing
  , petCategory = Nothing
  , petName
  , petPhotoUrls
  , petTags = Nothing
  , petStatus = Nothing
  }
  

-- ** Tag
-- | Tag
-- Pet Tag
-- 
-- A tag for a pet
data Tag = Tag
  { tagId :: !(Maybe Integer) -- ^ "id"
  , tagName :: !(Maybe Text) -- ^ "name"
  } deriving (P.Show,P.Eq,P.Typeable)


-- | FromJSON Tag
instance A.FromJSON Tag where
  parseJSON = A.withObject "Tag" $ \o ->
    Tag
      <$> (o .:? "id")
      <*> (o .:? "name")

-- | ToJSON Tag
instance A.ToJSON Tag where
  toJSON Tag {..} =
   _omitNulls
      [ "id" .= tagId
      , "name" .= tagName
      ]


-- | Construct a value of type 'Tag' (by applying it's required fields, if any)
mkTag
  :: Tag
mkTag =
  Tag
  { tagId = Nothing
  , tagName = Nothing
  }
  

-- ** User
-- | User
-- a User
-- 
-- A User who is purchasing from the pet store
data User = User
  { userId :: !(Maybe Integer) -- ^ "id"
  , userUsername :: !(Maybe Text) -- ^ "username"
  , userFirstName :: !(Maybe Text) -- ^ "firstName"
  , userLastName :: !(Maybe Text) -- ^ "lastName"
  , userEmail :: !(Maybe Text) -- ^ "email"
  , userPassword :: !(Maybe Text) -- ^ "password"
  , userPhone :: !(Maybe Text) -- ^ "phone"
  , userUserStatus :: !(Maybe Int) -- ^ "userStatus" - User Status
  } deriving (P.Show,P.Eq,P.Typeable)


-- | FromJSON User
instance A.FromJSON User where
  parseJSON = A.withObject "User" $ \o ->
    User
      <$> (o .:? "id")
      <*> (o .:? "username")
      <*> (o .:? "firstName")
      <*> (o .:? "lastName")
      <*> (o .:? "email")
      <*> (o .:? "password")
      <*> (o .:? "phone")
      <*> (o .:? "userStatus")

-- | ToJSON User
instance A.ToJSON User where
  toJSON User {..} =
   _omitNulls
      [ "id" .= userId
      , "username" .= userUsername
      , "firstName" .= userFirstName
      , "lastName" .= userLastName
      , "email" .= userEmail
      , "password" .= userPassword
      , "phone" .= userPhone
      , "userStatus" .= userUserStatus
      ]


-- | Construct a value of type 'User' (by applying it's required fields, if any)
mkUser
  :: User
mkUser =
  User
  { userId = Nothing
  , userUsername = Nothing
  , userFirstName = Nothing
  , userLastName = Nothing
  , userEmail = Nothing
  , userPassword = Nothing
  , userPhone = Nothing
  , userUserStatus = Nothing
  }
  

-- * Parameter newtypes

newtype AdditionalMetadata = AdditionalMetadata { unAdditionalMetadata :: Text } deriving (P.Eq, P.Show)
newtype ApiKey = ApiKey { unApiKey :: Text } deriving (P.Eq, P.Show)
newtype Body = Body { unBody :: [User] } deriving (P.Eq, P.Show, A.ToJSON)
newtype File = File { unFile :: FilePath } deriving (P.Eq, P.Show)
newtype Name = Name { unName :: Text } deriving (P.Eq, P.Show)
newtype OrderId = OrderId { unOrderId :: Integer } deriving (P.Eq, P.Show)
newtype OrderIdText = OrderIdText { unOrderIdText :: Text } deriving (P.Eq, P.Show)
newtype Password = Password { unPassword :: Text } deriving (P.Eq, P.Show)
newtype PetId = PetId { unPetId :: Integer } deriving (P.Eq, P.Show)
newtype Status = Status { unStatus :: [Text] } deriving (P.Eq, P.Show)
newtype StatusText = StatusText { unStatusText :: Text } deriving (P.Eq, P.Show)
newtype Tags = Tags { unTags :: [Text] } deriving (P.Eq, P.Show)
newtype Username = Username { unUsername :: Text } deriving (P.Eq, P.Show)

-- * Utils

-- | Removes Null fields.  (OpenAPI-Specification 2.0 does not allow Null in JSON)
_omitNulls :: [(Text, A.Value)] -> A.Value
_omitNulls = A.object . P.filter notNull
  where
    notNull (_, A.Null) = False
    notNull _ = True

-- | Encodes fields using WH.toQueryParam
_toFormItem :: (WH.ToHttpApiData a, Functor f) => t -> f a -> f (t, [Text])
_toFormItem name x = (name,) . (:[]) . WH.toQueryParam <$> x

-- | Collapse (Just "") to Nothing
_emptyToNothing :: Maybe String -> Maybe String
_emptyToNothing (Just "") = Nothing
_emptyToNothing x = x
{-# INLINE _emptyToNothing #-}

-- | Collapse (Just mempty) to Nothing
_memptyToNothing :: (P.Monoid a, P.Eq a) => Maybe a -> Maybe a
_memptyToNothing (Just x) | x P.== P.mempty = Nothing
_memptyToNothing x = x
{-# INLINE _memptyToNothing #-}

-- * DateTime Formatting

newtype DateTime = DateTime { unDateTime :: TI.UTCTime }
  deriving (P.Eq,P.Data,P.Ord,P.Typeable,NF.NFData,TI.ParseTime,TI.FormatTime)
instance A.FromJSON DateTime where
  parseJSON = A.withText "DateTime" (_readDateTime . T.unpack)
instance A.ToJSON DateTime where
  toJSON (DateTime t) = A.toJSON (_showDateTime t)
instance WH.FromHttpApiData DateTime where
  parseUrlPiece = P.left T.pack . _readDateTime . T.unpack
instance WH.ToHttpApiData DateTime where
  toUrlPiece (DateTime t) = T.pack (_showDateTime t)
instance P.Show DateTime where
  show (DateTime t) = _showDateTime t

-- | @_parseISO8601@
_readDateTime :: (TI.ParseTime t, Monad m, Alternative m) => String -> m t
_readDateTime =
  _parseISO8601
{-# INLINE _readDateTime #-}

-- | @TI.formatISO8601Millis@
_showDateTime :: (t ~ TI.UTCTime, TI.FormatTime t) => t -> String
_showDateTime =
  TI.formatISO8601Millis
{-# INLINE _showDateTime #-}

-- | parse an ISO8601 date-time string
_parseISO8601 :: (TI.ParseTime t, Monad m, Alternative m) => String -> m t
_parseISO8601 t =
  P.asum $
  P.flip (TI.parseTimeM True TI.defaultTimeLocale) t <$>
  ["%FT%T%QZ", "%FT%T%Q%z", "%FT%T%Q%Z"]
{-# INLINE _parseISO8601 #-}

-- * Date Formatting

newtype Date = Date { unDate :: TI.Day }
  deriving (P.Enum,P.Eq,P.Data,P.Ord,P.Ix,NF.NFData,TI.ParseTime,TI.FormatTime)
instance A.FromJSON Date where
  parseJSON = A.withText "Date" (_readDate . T.unpack)
instance A.ToJSON Date where
  toJSON (Date t) = A.toJSON (_showDate t)
instance WH.FromHttpApiData Date where
  parseUrlPiece = P.left T.pack . _readDate . T.unpack
instance WH.ToHttpApiData Date where
  toUrlPiece (Date t) = T.pack (_showDate t)
instance P.Show Date where
  show (Date t) = _showDate t

-- | @TI.parseTimeM True TI.defaultTimeLocale "%Y-%m-%d"@
_readDate :: (TI.ParseTime t, Monad m) => String -> m t
_readDate =
  TI.parseTimeM True TI.defaultTimeLocale "%Y-%m-%d"
{-# INLINE _readDate #-}

-- | @TI.formatTime TI.defaultTimeLocale "%Y-%m-%d"@
_showDate :: TI.FormatTime t => t -> String
_showDate =
  TI.formatTime TI.defaultTimeLocale "%Y-%m-%d"
{-# INLINE _showDate #-}

-- * Byte/Binary Formatting

  
-- | base64 encoded characters
newtype ByteArray = ByteArray { unByteArray :: BL.ByteString }
  deriving (P.Eq,P.Data,P.Ord,P.Typeable,NF.NFData)

instance A.FromJSON ByteArray where
  parseJSON = A.withText "ByteArray" _readByteArray
instance A.ToJSON ByteArray where
  toJSON = A.toJSON . _showByteArray
instance WH.FromHttpApiData ByteArray where
  parseUrlPiece = P.left T.pack . _readByteArray
instance WH.ToHttpApiData ByteArray where
  toUrlPiece = _showByteArray
instance P.Show ByteArray where
  show = T.unpack . _showByteArray

-- | read base64 encoded characters
_readByteArray :: Monad m => Text -> m ByteArray
_readByteArray = P.either P.fail (pure . ByteArray) . BL64.decode . BL.fromStrict . T.encodeUtf8
{-# INLINE _readByteArray #-}

-- | show base64 encoded characters
_showByteArray :: ByteArray -> Text
_showByteArray = T.decodeUtf8 . BL.toStrict . BL64.encode . unByteArray
{-# INLINE _showByteArray #-}

-- | any sequence of octets
newtype Binary = Binary { unBinary :: BL.ByteString }
  deriving (P.Eq,P.Data,P.Ord,P.Typeable,NF.NFData)

instance A.FromJSON Binary where
  parseJSON = A.withText "Binary" _readBinaryBase64
instance A.ToJSON Binary where
  toJSON = A.toJSON . _showBinaryBase64
instance WH.FromHttpApiData Binary where
  parseUrlPiece = P.left T.pack . _readBinaryBase64
instance WH.ToHttpApiData Binary where
  toUrlPiece = _showBinaryBase64
instance P.Show Binary where
  show = T.unpack . _showBinaryBase64

_readBinaryBase64 :: Monad m => Text -> m Binary
_readBinaryBase64 = P.either P.fail (pure . Binary) . BL64.decode . BL.fromStrict . T.encodeUtf8
{-# INLINE _readBinaryBase64 #-}

_showBinaryBase64 :: Binary -> Text
_showBinaryBase64 = T.decodeUtf8 . BL.toStrict . BL64.encode . unBinary
{-# INLINE _showBinaryBase64 #-}
